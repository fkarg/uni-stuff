
import logging
logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.WARN)


class Space:
    left_trans = dict(N="W", E="N", S="E", W="S")
    move_xy = dict(N=(0, 1), E=(1, 0), S=(0, -1), W=(-1, 0))

    def to_left(self, dir):
        return self.left_trans[dir]

    def to_back(self, dir):
        return self.left_trans[self.left_trans[dir]]

    def to_right(self, dir):
        return self.left_trans[self.left_trans[self.left_trans[dir]]]

    def neighbour(self, pos, dir):
        return(pos[0]+self.move_xy[dir][0],
               pos[1]+self.move_xy[dir][1])


class Factory(Space):
    """The factory contains the static layout of the floor as well as the agents.
       It can add new features to places, but this should only be done in the
       beginning.
       Each field is initially a "FreeElement" surrounded by four "OpenBorder".
       These are stored in a dict "floor" indexed by positions, where at each
       position there are five slots: "N", "S", "W", "E" for the borders
       and "P" for the place.
       Apart from that the factory senses collisions between agents and
       dispatches the methods call to apply the different factory elements.
    """

    def __init__(self, cols=5, rows=5, installs=()):
        """Inserts objects in 'installs' according to their position in a dict
        """
        self.rows = rows
        self.cols = cols
        self.agents = []
        self.beams = []
        self.step = 0
        self.reg_phase = 0
        self.floor = dict()  # floor with coordinates
        self.init_floor(cols, rows, installs)

    def init_floor(self, cols, rows, installs):
        """Insert borders, free elements and all objects to be installed
        """
        for x in range(1, cols+1):
            for y in range(1, rows+1):
                self.floor[(x, y)] = dict()
                self.install(FreeElement(x, y))  # might be overwritten later!
                for slot in ("N", "E", "S", "W"):
                    fx = ((slot == "N" and y == self.rows) or
                          (slot == "S" and y == 1) or
                          (slot == "E" and x == self.cols) or
                          (slot == "W" and x == 1))
                    self.install(OpenBorder(x, y, dir=slot, factoryexit=fx))
        for obj in installs:
            self.install(obj)

    def install(self, obj):
        """Installs an object in the right slot and inserts a pointer
           back to factory in each object!
        """

        obj.factory = self
        if isinstance(obj, MoveableThing):
            self.agents.append(obj)
        elif isinstance(obj, BorderElement):
            self.floor[obj.pos][obj.dir] = obj
        else:
            self.floor[obj.pos]["P"] = obj

    def occupied(self, pos, virtual=False):
        """Checks for agents in this field and returns them.
           if virtual is True, also the virtual agents are returned"""
        result = []
        if pos:
            for a in self.agents:
                if a.pos == pos and (not a.virtual or virtual):
                    result.append(a)
        return result

    def collision(self, agent):
        """Returns all agents that collide with 'agent'.
        """
        if agent.pos and self.floor[agent.pos]['P'].nocollisions:
            return []  # in Pits, nocollisions is True!
        result = self.occupied(agent.pos)
        if agent in result:
            result.remove(agent)
        return result

    def push_conflict(self, pusher):
        """Checks whether there is another pusher affecting the same cells.
           If so, we set the conflict flag in both pushers.
        """
        conflict_detected = False
        for pos in self.floor:
            obj = self.floor[pos]["P"]
            try:
                if obj != pusher and obj.marked & pusher.marked != set():
                    logging.info("Pusher conflict: %s and %s" %
                                 (obj.pos, pusher.pos))
                    obj.conflict = True
                    pusher.conflict = True
                    conflict_detected = True
            except Exception:
                pass
        if conflict_detected:
            logging.info("Pusher stopped at %s" % (pusher.pos,))
        return conflict_detected

    def apply(self):
        """Apply all factory elements. Order is important!"""
        for pos in self.floor:
            self.floor[pos]['P'].apply_element()
        for a in self.agents:  # consider robots as factory elements
            a.apply_element()
        for b in self.beams:  # finally consider all shot beams
            b.apply_element()
        self.beams = []  # remove all beams after one round of shots

    def exec_reg_phase(self, reg_phase, cmdlist):
        """Execute one register phase."""
        self.reg_phase = reg_phase
        logging.info("*** Starting register phase %s" % reg_phase)
        self.step = 0
        for cmd in cmdlist:
            for repitition in range(cmd[0]):
                cmd[1]()
                self.apply()  # only pits will be considered here (step==0)
                self.resolve_conflicts()
        for self.step in range(1, 9):
            self.apply()
            self.resolve_conflicts()

    def resolve_conflicts(self):
        """Resolve all conflicts created by collosions.
           Simply send all agents a "resolve" message!
           Finally, all agents marked as killed will die.
        """
        for a in self.agents:
            a.resolve()
        for a in self.agents:
            a.reset()
        for a in self.agents:
            if a.killed:
                a.die()


class Thing(Space):
    """Each thing has a position on the floor

    """
    def __init__(self, x, y, factory=None, **kw):
        self.factory = factory
        self.pos = (x, y)

    def __str__(self):
        try:
            return self.name.upper()
        except AttributeError:
            return self.__class__.__name__.upper()


class OrientedThing(Thing):
    """Anything oriented using cardinal directions (N, E, S, W)"""

    def __init__(self, x, y, dir="N", **kw):
        super().__init__(x, y, **kw)
        self.dir = dir


class MoveableThing(OrientedThing):
    """Anything moveable"""

    def __init__(self, x, y, dir="N", **kw):
        super().__init__(x, y, dir, **kw)
        self.lastconf = None  # last configuration, i.e. pos and dir
        self.pushmarker = None  # last pusher element which marked fields

    def move(self, dir):
        """Passive or active movement to a neighbouring field.
           Is blocked immediately by walls.
           Other robots are pushed.
           Collisions are handled as in the transport case, i.e.,
           resolve is called afterwards.
        """
        logging.info("move: move of %s from %s in direction %s" %
                     (self, self.pos, dir))
        self.lastconf = (self.pos, self.dir)
        # try to move into direction dir
        if not self.factory.floor[self.pos][dir].leavecell(self):
            # could not leave cell
            logging.info("move: %s cannot move because of a wall" % self)
            self.lastconf = None
            return
        colliders = self.factory.collision(self)
        for collider in colliders:  # if collision with another robot, push
            collider.move(dir)

    def transport(self, dir):
        """Transport on a conveyor belt without collision checks
        After the parallel move, somebody has to call the resolution method
        """
        if self.lastconf:  # has already been moved in parallel
            return False
        self.lastconf = (self.pos, self.dir)
        if self.factory.floor[self.pos][dir].leavecell(self):
            logging.info("transport: %s to %s" % (self, self.pos))
            return True
        return False

    def mark(self, dir, pusher):
        """Marks current field and then propagates to neighbour.
           Marks also the agent with the pusher who tried to push.
        """
        self.pushmarker = pusher
        marked = {self.pos}
        if self.factory.floor[self.pos][dir].leavecell(self, onlycheck=True):
            neighbour_cell = self.neighbour(self.pos, dir)
            if (neighbour_cell in self.factory.floor and
               not self.factory.floor[neighbour_cell]['P'].nocollisions):
                marked |= {neighbour_cell}
                for a in self.factory.occupied(neighbour_cell):
                    marked |= a.mark(dir, pusher)
        return marked

    def resolve(self):
        """Is called for each robot after every robot has been
           transported or moved
        """
        collider = self.factory.collision(self)
        if collider:
            for a in collider + [self]:
                a.retract()
        if self.pushmarker and self.pushmarker.conflict:
            self.retract()

    def retract(self):
        """There was a collision or confilct, so we have to retract the robot
           to the last position
        """
        if self.lastconf:
            self.pos = self.lastconf[0]
            self.dir = self.lastconf[1]
            self.lastconf = None
            self.killed = False
            logging.info("retract: send %s back to %s" % (self, self.pos))
            for a in self.factory.collision(self):
                a.retract()

    def reset(self):
        self.lastconf = None
        if self.pushmarker:
            self.pushmarker.conflict = False
            self.pushmarker.marked = set()
            self.pushmarker = None


class FlyingThing(OrientedThing):

    def fly(self, shootby=None):
        """Movement until we hit an obstacle; shootby is the agent
           shooting the object (not leading to a collision or to damage!)
        """
        if not self.pos:
            return  # left factory!
        logging.info("fly: %s wants to fly from %s in direction %s" %
                     (self, self.pos, self.dir))
        occ = self.factory.occupied(self.pos, virtual=True)
        if (occ and shootby not in occ):
            logging.info("fly: %s cannot move because of an obstacle" % self)
        elif not self.factory.floor[self.pos][self.dir].leavecell(self):
            # could not leave cell
            logging.info("fly: %s cannot move because of a wall" % self)
        else:
            self.fly()


class TurnableThing(OrientedThing):

    def rotate_left(self, *rest):
        self.dir = self.to_left(self.dir)
        logging.info("rotate_left: %s facing now %s" %
                     (self, self.dir))

    def u_turn(self, *rest):
        self.dir = self.to_back(self.dir)
        logging.info("u_turn: %s facing now %s" %
                     (self, self.dir))

    def rotate_right(self, *rest):
        self.dir = self.to_right(self.dir)
        logging.info("rotate_right: %s facing now %s" %
                     (self, self.dir))


class AffectingElement(Thing):

    # kill agents and other things
    def kill(self, obj, message):
        logging.info(message % (obj, obj.pos))
        obj.pos = None
        obj.killed = True

    # damage an agent
    def damage(self, agent, message):
        logging.info(message % (agent, agent.pos))
        agent.damage += 1
        if agent.damage >= 10:
            self.kill(agent, "%s killed by too much damage at %s")


class FactoryElement(AffectingElement):
    """This is a factory element. You need to specify in which register phase
       and which element step the element will be active. This can be done on a
       per class or per instance base. The main methods to specify are the
       acton and act methods.

       Element steps can be:
       0: the robots move
       1: express conveyor belts move one step
       2: express conveyor belts and normal conveyor belts move one step
       3: pushers push
       4: gears turn
       5: crushers crush
       6: lasers fire (installed and robot lasers)
       7: one way portals
       8: repair and checkpoint actions
    """
    nocollisions = False
    active_steps = {}

    def __init__(self, x, y, reg_phases=None, **kw):
        if (reg_phases):
            self.active_reg_phases = reg_phases
        else:
            self.active_reg_phases = {1, 2, 3, 4, 5}
        super().__init__(x, y, **kw)

    # apply an element in isolation (e.g., shoot laser beam) and
    # on all agents if all preconditions are met
    def apply_element(self):
        if (self.factory.step in self.active_steps and
           self.factory.reg_phase in self.active_reg_phases):
            # go over all agents in this cell:
            for agent in self.factory.occupied(self.pos, virtual=True):
                self.acton(agent)
            self.act()

    # apply in isolation
    def act(self):
        pass

    # act on one agent
    def acton(self, agent):
        pass

    # do something on arrival from direction dir (for turning conveyors)
    def on_arrival(self, agent, dir):
        pass


class Beam(FlyingThing, FactoryElement):

    active_steps = {6}

    def __init__(self, x, y, shootby=None, **kw):
        super().__init__(x, y, **kw)
        self.shootby = shootby
        self.factory.beams.append(self)
        if shootby:
            logging.info("%s shot by %s at %s, direction %s" %
                         (self, self.shootby, self.pos, self.dir))
        else:
            logging.info("%s shot at %s, direction %s" %
                         (self, self.pos, self.dir))
        self.fly(shootby=shootby)

    def acton(self, agent):
        if not self.pos or self.shootby is agent:
            return
        self.damage(agent, "%s got damaged by laserbeam at %s")


class Robot(MoveableThing, TurnableThing, FactoryElement):

    active_steps = {6}

    def __init__(self, x, y, dir="N",
                 name="Anonymous", **kw):
        super().__init__(x, y, dir, **kw)
        self.name = name
        self.damage = 0
        self.lives = 3
        self.alive = True
        self.virtual = False
        self.killed = False
        logging.info("init: %s starts at %s with orientation %s" %
                     (self, self.pos, self.dir))

    def die(self):
        logging.info("%s dies" % self)
        self.alive = False
        self.lives -= 1
        self.damage = 0
        self.killed = False

    def go(self):
        logging.info("GO command: %s" % self)
        self.onestep(True)

    def backup(self):
        logging.info("BACKUP command: %s" % self)
        self.onestep(False)

    def onestep(self, forward):
        """active execution of one step (forward or backward)"""
        forb = "forward"
        if not forward:
            forb = "backward"
        logging.info("onestep: %s wants to make 1 step %s (dir=%s)" %
                     (self, forb, self.dir))
        if not self.alive:
            logging.info("onestep: %s is dead and cannot move" % self)
            return
        if forward:
            self.move(self.dir)
        else:
            self.move(self.to_back(self.dir))

    # And now the robot acts as a factory element:
    def act(self):
        if self.alive and not self.virtual:
            Beam(self.pos[0], self.pos[1], shootby=self,
                 factory=self.factory, dir=self.dir)


class FreeElement(FactoryElement):
    """ Nothing happens to anybody on free space

    >>> f = Factory(2, 2, installs=(Robot(1, 1, dir="S", name="T"),))
    >>> f.exec_reg_phase(1,())
    >>> f.agents[0].pos, f.agents[0].dir
    ((1, 1), 'S')

    """
    pass


class Pit(FactoryElement):
    """ A pit kills the agent

    >>> t = Robot(2,1, dir = 'N', name='T')
    >>> f = Factory(2, 2, installs=(Pit(2,2), t))
    >>> f.exec_reg_phase(1, [(2, t.go)])
    >>> t.pos, t.dir
    (None, 'N')

    """
    nocollisions = True
    active_steps = {0, 1, 2, 3, 4, 5, 6, 7, 8}  # also active when robots move!

    def acton(self, agent):
        self.kill(agent, "%s was killed in pit at %s")


class BorderElement(OrientedThing, AffectingElement):
    """Border elements are a bit different
       They interact through leavecell() and entercall() methods
       with moving and flying things.
       """

    def leavecell(self, thing, onlcheck=False):
        """Try to leave cell through this border (containing direction).
        Change thing.pos (if not onlycheck) and return True if successful,
        otherwise return False
        """
        raise NotImplementedError("leavecall must be defined")

    def entercell(self, thing, onlycheck=False):
        """Try to enter cell through this border. Change thing.pos
        (if not onlycheck) and return True
        if successful. Otherwise return false.
        """
        raise NotImplementedError("entercall must be defined")


class OpenBorder(BorderElement):
    """Open border is the default for all cells. Leaving the factory leads to
       a fast death
       >>> r = Robot(1, 1, dir="E", name="r")
       >>> f = Factory(2, 2, installs=(r,))
       >>> f.exec_reg_phase(1, [(1, r.go)])
       >>> r.pos
       (2, 1)
       >>> f.exec_reg_phase(2, [(2, r.go)])
       >>> print(r.pos)
       None

       """

    def __init__(self, x, y, factoryexit=False, **kw):
        super().__init__(x, y, **kw)
        self.exit = factoryexit

    def leavecell(self, thing, onlycheck=False):
        if self.exit:
            if not onlycheck:
                self.kill(thing, "%s was killed leaving factory at %s")
            return True
        else:
            return self.factory.floor[self.neighbour(
                self.pos, self.dir)][self.to_back(self.dir)].\
                entercell(thing, onlycheck)

    def entercell(self, thing, onlycheck=False):
        if not onlycheck:
            thing.pos = self.pos
        return True


class Wall(BorderElement):

    def leavecell(self, thing, onlycheck=False):
        if not onlycheck:
            logging.info("%s bumped into a wall and does not leave %s" %
                         (thing, thing.pos))
        return False

    def entercell(self, thing, onlycheck=False):
        if not onlycheck:
            logging.info("%s bumped into a wall and is back at %s" %
                         (thing, thing.pos))
        return False


class Pusher(FactoryElement, OrientedThing):
    """Pusher pushes an agent and all others in line one step
       A wall opposite to push direction should be installed!

       In order to find out whether pushing doesn't lead to
       collisions with robots pushed by other pushers, we first
       need to find out which fields we are going to affect.

       >>> f = Factory(2, 2, installs=(Robot(1, 1, dir="S", name="T"),))
       >>> f.install(Pusher(1, 1, dir='E', reg_phases={2, 5}))
       >>> f.install(Robot(2, 1, dir="E", name="X"))
       >>> f.exec_reg_phase(1,())
       >>> f.agents[0].pos, f.agents[0].dir
       ((1, 1), 'S')
       >>> f.exec_reg_phase(2,())
       >>> f.agents[0].pos, f.agents[1].pos
       ((2, 1), None)
       >>> r12 = Robot(1,2,name='R(1,2)')
       >>> r21 = Robot(2,1,name='R(2,1)')
       >>> r22 = Robot(2,2,name='R(2,2)')
       >>> r23 = Robot(2,3,name='R(2,3)')
       >>> r33 = Robot(3,3,name='R(3,3)')
       >>> f = Factory(3, 3, installs=(r12, r21, r22, r23, r33))
       >>> f.install(Pusher(1,2,dir='E',reg_phases={1}))
       >>> f.install(Pusher(2,1,dir='N',reg_phases={1,2,4}))
       >>> f.install(Pusher(3,3,dir='W',reg_phases={1,2,3}))
       >>> f.exec_reg_phase(1,())
       >>> print(r12.pos, r21.pos, r22.pos, r23.pos, r33.pos)
       (1, 2) (2, 1) (2, 2) (2, 3) (3, 3)
       >>> f.exec_reg_phase(2,())
       >>> print(r12.pos, r21.pos, r22.pos, r23.pos, r33.pos)
       (1, 2) (2, 1) (2, 2) (2, 3) (3, 3)
       >>> f.exec_reg_phase(3,())
       >>> print(r12.pos, r21.pos, r22.pos, r23.pos, r33.pos)
       (1, 2) (2, 1) (2, 2) (1, 3) (2, 3)
       >>> f.exec_reg_phase(4,())
       >>> print(r12.pos, r21.pos, r22.pos, r23.pos, r33.pos)
       (1, 2) (2, 2) (2, 3) (1, 3) None

    """

    active_steps = {3}

    def __init__(self, x, y, **kw):
        super().__init__(x, y, **kw)
        self.marked = set()  # set of potentially affected positions
        self.conflict = False  # set when a conflict has been detected

    def acton(self, agent):
        logging.info("PUSHER: try to push %s at %s into dir %s" %
                     (agent, self.pos, self.dir))
        # mark all potentially affected agents with pusher (and remember)
        self.marked = agent.mark(self.dir, self)
        if not self.factory.push_conflict(self):
            agent.move(self.dir)


class Gear(FactoryElement):
    """Gear turns robot on the spot

       >>> f = Factory(2, 2, installs=(Robot(1, 1, dir="S", naem="T"),\
           Gear(1, 1)))
       >>> f.exec_reg_phase(1,())
       >>> f.agents[0].pos, f.agents[0].dir
       ((1, 1), 'W')

    """
    active_steps = {4}

    def __init__(self, x, y, clockwise=True, **kw):
        super().__init__(x, y, **kw)
        self.clockwise = clockwise

    def acton(self, agent):
        if self.clockwise:
            logging.info("GEAR: turn %s clockwise at %s" % (agent, self.pos))
            agent.rotate_right()
        else:
            logging.info("GEAR: turn %s counter-clockwise at %s" %
                         (agent, self.pos))
            agent.rotate_left()


class Conveyor(FactoryElement, OrientedThing):
    """Conveyor transport robots one step

       >>> f = Factory(2, 2, installs=(Robot(1, 1, dir="S", name="T"),\
           Conveyor(1, 1, dir="N")))
       >>> f.exec_reg_phase(1,())
       >>> f.agents[0].pos, f.agents[0].dir
       ((1, 2), 'S')
       >>> f.install(Robot(1, 1, dir="W", name="X"))
       >>> f.exec_reg_phase(1,())
       >>> f.agents[0].pos, f.agents[0].dir, f.agents[1].pos, f.agents[1].dir
       ((1, 2), 'S', (1, 1), 'W')
       >>> f = Factory(2, 3, installs=(Conveyor(1,2,dir='E'),\
           Conveyor(2,1,dir='N')))
       >>> t = Robot(1,2,dir='S',name='T'); f.install(t)
       >>> x = Robot(2,1,dir='E',name='X'); f.install(x)
       >>> f.exec_reg_phase(1, [])
       >>> t.pos, x.pos
       ((1, 2), (2, 1))
       >>> f.install(Pit(2, 2))
       >>> f.exec_reg_phase(2, [])
       >>> t.pos, x.pos
       (None, None)

    """
    active_steps = {2}

    def acton(self, agent):
        if agent.transport(self.dir) and agent.pos:
            self.factory.floor[agent.pos]['P'].on_arrival(agent, self.dir)


class FastConveyor(Conveyor):

    active_steps = {1, 2}


class TurningConveyor(Conveyor):

    """Note: The turning element transports things normally. Only
       when another conveyor moves something on us, then this sending
       element has to call the on_arrival method!

       >>> f = Factory(5, 5, installs=())
       >>> f.install(Conveyor(2, 1, dir='N'))
       >>> f.install(TurningConveyor(2, 2, dir='W'))
       >>> f.install(Robot(2, 1, dir="E", name='Y'))
       >>> f.exec_reg_phase(2,())
       >>> f.agents[0].pos, f.agents[0].dir
       ((2, 2), 'N')

    """

    def on_arrival(self, agent, dir):  # called only by ordinary conveyor
        logging.info("%s arrives on %s with dir %s" % (agent, self, dir))
        if self.dir == self.to_right(dir):
            logging.info("%s: rotate %s right" % (self, agent))
            agent.rotate_right()
        if self.dir == self.to_left(dir):
            logging.info("%s: rotate %s left" % (self, agent))
            agent.rotate_left()


class FastTurningConveyor(FastConveyor, TurningConveyor):
    """Everything is handled by the base classes
    """
    pass


class Crusher(FactoryElement):
    """Crushers destroy robots, when the crushers are active.

    >>> r = Robot(1, 2, dir="S", name="T")
    >>> f = Factory(2, 2, installs=(r,))
    >>> f.install(Crusher(1, 1, reg_phases={3, 4}))
    >>> f.exec_reg_phase(1,[(1, r.go)])
    >>> r.pos, r.alive
    ((1, 1), True)
    >>> f.exec_reg_phase(2,())
    >>> r.pos, r.alive
    ((1, 1), True)
    >>> f.exec_reg_phase(3,())
    >>> r.pos, r.alive
    (None, False)


    """
    active_steps = {5}

    def acton(self, agent):
        self.kill(agent, "%s is killed by crusher at %s")


class Laser(FactoryElement):
    """This is an industrial strenght laser!
    >>> r = Robot(3,3, dir='S',name='R')
    >>> f = Factory(3, 3, installs=(r, Laser(3, 1, dir='N', beams=3)))
    >>> f.exec_reg_phase(1, ())
    >>> r.damage
    3

    """
    active_steps = {6}

    def __init__(self, x, y, beams=1, **kw):
        self.beams = beams
        super().__init__(x, y, **kw)

    def act(self):
        for b in range(self.beams):
            Beam(self.pos[0], self.pos[1], factory=self.factory)


class RepairSite():  # TODO: Insert appropriate superclass(es)
    """Repair fields reduce the damage of a robot standing on it

    >>> r = Robot(1, 4, dir='S', name='T')
    >>> f = Factory(1, 4, installs=(r,))
    >>> f.install(RepairSite(1, 3, reducedamage=1))
    >>> f.install(RepairSite(1, 2, reducedamage=2))
    >>> f.install(RepairSite(1, 1, reducedamage=2))
    >>> r.damage = 4
    >>> r.pos, r.damage
    ((1, 4), 4)
    >>> f.exec_reg_phase(1,[(1, r.go)])
    >>> r.pos, r.damage
    ((1, 3), 3)
    >>> f.exec_reg_phase(1,[(1, r.go)])
    >>> r.pos, r.damage
    ((1, 2), 1)
    >>> f.exec_reg_phase(1,[(1, r.go)])
    >>> r.pos, r.damage
    ((1, 1), 0)


    """
    # TODO: Insert your code here!
    pass


class OneWayPortal():  # TODO: Insert appropriate superclass(es)
    """OneWayPortal are elements that teleport robots to a target place
       become active in the element move phase 6

    >>> r = Robot(1, 1, dir='E', name='Rob')
    >>> t = Robot(3, 3, dir='S', name='Tom')
    >>> f = Factory(3, 3, installs=(r, t))
    >>> f.install(OneWayPortal(1, 1, target=(3, 3)))
    >>> f.install(Wall(3, 2, dir='N'))
    >>> f.exec_reg_phase(1, ())
    >>> r.pos, t.pos
    ((1, 1), (3, 3))
    >>> f.install(OneWayPortal(3, 3, target=(3, 2)))
    >>> f.exec_reg_phase(2, ())
    >>> r.pos, t.pos
    ((3, 3), (3, 2))

    """
    # TODO: Insert your code here!
    pass


if __name__ == "__main__":
    import doctest
    logging.getLogger().setLevel(logging.INFO)
    doctest.testmod()
