"""Fireworks.

This module implements a fireworks that is drawn onto a tkinter canvas.

References:

.. _Lecture:
   http://www.informatik.uni-freiburg.de/~ki/teaching/ws1617/info1/lecture.html

Authors:
    Tim Schulte
    Thorsten Engesser

Version:
    WS 2016/17

"""

import tkinter as tk
from time import time, sleep
from random import choice, uniform, gauss, vonmisesvariate
from math import sin, cos
from sys import modules

GRAVITY = 30  # you can play around with this if you want
SLOWDOWN = 0.995
pi = 3.1415926535


class EmptyParticle:
    """Empty Particle class.
    simply doesn't have the resource overhead of the default Particle class.
    """

    def update(self, dt):
        pass


class Particle:
    """Generic class for particles.

    Particles can be emitted by Fireworks objects. They are displayed for a
    specified lifespan and then removed from the canvas.

    Attributes:
        cv (Tk.canvas): the canvas in which the particle is drawn.
        cid (Tk.canvas): the tkinter canvas id for the particle.
        x (float): x-coordinate of the particle.
        y (float): y-coordinate of the particle.
        vx (float): x-velocity of the particle (in pixels per second).
        vy (float): y-velocity of the particle (in pixels per second).
        color (str): color of the particle.
        age (float): age of the particle.
        lifespan (float): lifespan of the particle (in seconds).

    """

    def __init__(self, cv=None, x=0., y=0.,
                 vx=0., vy=0., color='white', lifespan=5.):
        """Init Particle objects.

        Args:
            cv (Tk.canvas): the canvas in which the particle is drawn.
            x (float): x-coordinate of the particle.
                Defaults to 0.0.
            y (float): y-coordinate of the particle.
                Defaults to 0.0.
            vx (float): x-velocity of the particle (in pixels per second).
                Defaults to 0.0.
            vy (float): y-velocity of the particle (in pixels per second).
                Defaults to 0.0.
            color (str): color of the particle.
                Defaults to 'white'.
            lifespan (float): lifespan of the particle (in seconds).
                Defaults to 5.0.

        """
        self.cv = cv
        self.cid = None
        self.x, self.y = x, y
        self.vx, self.vy = vx, vy
        self.color = color
        self.age, self.lifespan = 0, lifespan

    def update(self, dt):
        """Update position and velocity after dt seconds have passed.

        Args:
            dt (float): the time that has passed after the last update (in s).

        """
        self.age += dt
        if self.alive():
            self.vy += GRAVITY * dt
            self.vx *= SLOWDOWN
            self.x += self.vx * dt
            self.y += self.vy * dt
            self.cv.move(self.cid, self.vx * dt, self.vy * dt)
        elif self.cid is not None:
            cv.delete(self.cid)
            self.cid = None
            self = EmptyParticle()

    def alive(self):
        """Check if particle is still within its lifespan."""
        return self.age <= self.lifespan


class SquareParticle(Particle):
    """A Particle with a quadratic shape"""
    def __init__(self, x=0., y=0., size=2., **kwargs):
        super().__init__(x=x, y=y, **kwargs)
        self.cid = self.cv.create_polygon(
            x - size, y - size, x + size, y - size,
            x + size, y + size, x - size, y + size,
            fill=self.color)


class TriangleParticle(Particle):
    """A Particle with a triangular shape"""
    def __init__(self, x=0., y=0., size=2., **kwargs):
        super().__init__(x=x, y=y, **kwargs)
        self.cid = self.cv.create_polygon(
            x - size, y - size, x + size,
            y - size, x, y + size,
            fill=self.color)


class CircularParticle(Particle):
    """A Particle with a circular shape."""
    def __init__(self, x=0., y=0., size=2., **kwargs):
        super().__init__(x=x, y=y, **kwargs)
        self.cid = self.cv.create_oval(
            x - size, y - size, x + size,
            y + size, fill=self.color)


class Fireworks:
    """Generic class for fireworks.

    The main "behavior" of a fireworks is specified via its update method.
    E.g., new particles can be emitted and added to the particle list. The
    Fireworks base class automatically updates all particles from the particle
    list in its update method.

    Attributes:
        cv (Tk.canvas): the canvas in which the fireworks is drawn.
        age (float): age of the fireworks.
        particles (list of Particle): list of generated particles.

    """

    def __init__(self, cv=None):
        """Init Fireworks objects.

        Args:
            cv (Tk.canvas): the canvas in which the particle is drawn.

        """
        self.cv = cv
        self.age = 0
        self.particles = []

    def update(self, dt):
        """Update the fireworks' particles and remove dead ones.

        Args:
            dt (float): the time that has passed after the last update (in s).

        """
        self.age += dt
        for p in self.particles:
            p.update(dt)
        for i in range(len(self.particles) - 1, -1, -1):
            if not self.particles[i].alive():
                del self.particles[i]


class Volcano(Fireworks):
    """A volcano that continuously emits colored particles.

    Attributes:
        x (float): x-coordinate of the volcano.
        pps (float): the number of particles to spawn per second.
        colors (list of string): the colors of the particles to spawn.

    """

    def __init__(self, cv, x, pps, colors):
        """Init Volcano objects.

        Args:
            cv (Tk.canvas): the canvas in which the particle is drawn.
            x (float): x-coordinate of the volcano.
            pps (float): the number of particles to spawn per second.
            colors (list of string): the colors of the particles to spawn.

        """
        super().__init__(cv)
        self.cid = cv.create_polygon(x - 12, 530,  # size and color are fixed
                                     x + 12, 530,  # (can be parametrized)
                                     x, 500,
                                     fill="orange")
        self.x = x
        self.pps = pps
        self.colors = colors
        self._tospawn = 0

    def update(self, dt):
        """Continuously emits new random particles and updates them.

        Args:
            dt (float): the time that has passed after the last update (in s).

        """
        super().update(dt)
        self._tospawn += self.pps * dt
        color = self.colors[int(self.age / 3) % len(self.colors)]
        for i in range(int(self._tospawn)):
            ptype = choice(
                [SquareParticle, TriangleParticle, CircularParticle])
            angle = uniform(-0.25, 0.25)
            speed = -uniform(80.0, 120.0)
            vx = sin(angle) * speed
            vy = cos(angle) * speed
            self.particles.append(
                ptype(cv=self.cv, x=self.x, y=500, color=color, vx=vx, vy=vy))
        self._tospawn -= int(self._tospawn)


class Rocket (Fireworks, Particle):
    """A Rocket is first shooting up in the sky
    before exploding in a pattern.
    """

    def __init__(self, cv, x, y, pattern=None, particles_amount=500,
                 vx=0, vy=-120, timetodie=2., pcolor='white'):
        """Initializing the Rocket with a variable pattern.

        Args:
            cv (Tk.canvas): the canvas in which the Rocket is drawn
            x (float): x-starting point of rocket
            y (float): y-starting point of rocket
            pattern (callable): distribution for the particles
            particles_amount (int): Amount of particles
                emerging from the exploding rocket
            vx (float): x-velocity of rocket
            vy (float): y-velocity of rocket
            timetodie (float): time until explosion of rocket
            pcolor (Color): Color of the exploding particles
        """
        Fireworks.__init__(self, cv)
        Particle.__init__(self, cv, x, y, vx, vy, 'yellow', timetodie)
        self.pcolor = pcolor
        self.pattern = pattern
        self.particles_amount = particles_amount
        self.exploded = False
        size = 3
        self.cid = self.cv.create_oval(
            x - size, y - size, x + size,
            y + size, fill=self.color)

    def update(self, dt):
        """Continuously updates Rocket.

        Args:
            dt (float): the time that has passed after the last update (in s).

        """
        if self.alive():
            Particle.update(self, dt)
        else:
            if not self.exploded:
                self.explode()
            Fireworks.update(self, dt)

    def explode(self):
        """Exploding the Rocket.
        """
        self.exploded = True

        for p in range(self.particles_amount):
            ptype = choice(
                [SquareParticle, TriangleParticle, CircularParticle])

            if self.pattern is not None and callable(self.pattern):
                speed, angle = self.pattern()
            else:
                angle = vonmisesvariate(2*pi, 0)
                speed = uniform(0, 80)

            lifespan = gauss(2, .5)
            vx = sin(angle) * speed + self.vx
            vy = cos(angle) * speed + self.vy + 5
            self.particles.append(
                ptype(cv=self.cv, x=self.x, y=self.y,
                      color=self.pcolor, vx=vx, vy=vy, lifespan=lifespan))


class PolyRocket (Rocket):
    """A rocket creating a square.
    Patterns are going to be ignored.
    (planned was a specifiable polygon).

    The same functionality could have been gained
    by smartly interlinking angle and speed, which
    is absolutely possible with the pattern-callable.
    """

    def __init__(self, cv, x, y, particles_amount=100, vx=0, vy=-120,
                 timetodie=2., pcolor='white'):
        """
        Args:
            cv (Tk.canvas): the canvas in which the Rocket is drawn
            x (float): x-starting point of rocket
            y (float): y-starting point of rocket
            particles_amount (int): Amount of particles
                emerging from the exploding rocket
            vx (float): x-velocity of rocket
            vy (float): y-velocity of rocket
            timetodie (float): time until explosion of rocket
            pcolor (Color): Color of the exploding particles
        """
        super().__init__(cv, x, y, particles_amount=particles_amount,
                         vx=vx, vy=vy, timetodie=timetodie, pcolor=pcolor)

    def explode(self):
        """Exploding the Rocket to a square.
        """
        self.exploded = True

        for p in range(self.particles_amount):
            ptype = choice(
                [SquareParticle, TriangleParticle, CircularParticle])
            lifespan = gauss(2, .5)
            xd = self.x + uniform(-3, 3)
            yd = self.y + uniform(-3, 3)
            vx = (xd - self.x) * 3
            vy = (yd - self.y) * 3
            self.particles.append(
                ptype(cv=self.cv, x=xd, y=yd,
                      color=self.pcolor, vx=vx, vy=vy-30, lifespan=lifespan))


class NumberDrawer (Fireworks):
    """Drawing numbers in specified intervals in the Sky.
    """

    def __init__(self, cv, x, y, interval, number, colors, height=300):
        super().__init__(cv)
        self.x = x
        self.y = y
        self.interval = interval
        self.number = number
        self.colors = colors
        self.height = height
        self._tospawn = 0
        self.cid = cv.create_polygon(x - 12, 530,  # size and color are fixed
                                     x + 12, 530,  # (can be parametrized)
                                     x, 500,
                                     fill="PeachPuff4")

    def update(self, dt):
        self.age += dt
        for p in self.particles:
            p.update(dt)
        self._tospawn += dt * self.interval
        for i in range(int(self._tospawn)):
            self.fire()
        self._tospawn -= int(self._tospawn)

    def fire(self):
        color = self.colors[int(self.age / 5) % len(self.colors)]

        def middle(offset):
            vy = -(self.height + offset) / 2 + GRAVITY
            r1 = PolyRocket(self.cv, self.x, self.y, pcolor=color, vy=vy)
            r2 = PolyRocket(self.cv, self.x, self.y, pcolor=color, vx=+20,
                            vy=vy)
            r3 = PolyRocket(self.cv, self.x, self.y, pcolor=color, vx=-20,
                            vy=vy)
            self.particles.append(r1)
            self.particles.append(r2)
            self.particles.append(r3)

        def vertical(xoff, yoff):
            vx = xoff
            vy = -(self.height + yoff) / 2 + GRAVITY - yoff
            r1 = PolyRocket(self.cv, self.x, self.y, pcolor=color,
                            vx=vx, vy=vy)
            r2 = PolyRocket(self.cv, self.x, self.y, pcolor=color,
                            vx=vx, vy=vy+10)
            r3 = PolyRocket(self.cv, self.x, self.y, pcolor=color,
                            vx=vx, vy=vy-10)
            self.particles.append(r1)
            self.particles.append(r2)
            self.particles.append(r3)

        # This certainly could have been implemented easier ...
        if self.number == 0:
            middle(80)
            middle(-80)
            vertical(20, 20)
            vertical(20, -20)
            vertical(-20, 20)
            vertical(-20, -20)
        if self.number == 1:
            vertical(20, 20)
            vertical(20, -20)
        if self.number == 2:
            middle(80)
            middle(0)
            middle(-80)
            vertical(20, 20)
            vertical(-20, -20)
        if self.number == 6:
            middle(80)
            middle(0)
            middle(-80)
            vertical(20, -20)
            vertical(-20, 20)
            vertical(-20, -20)
        if self.number == 7:
            middle(80)
            vertical(20, 20)
            vertical(20, -20)


class RocketLauncher (Fireworks):
    """
    Attributes:
        x (float): x-coordinate of the rocketlauncher
        rps (float): the number of particles to spawn per second.
        colors (list of string): the colors of the rockets to spawn.

    """

    def __init__(self, cv, x, rps, colors):
        """Init Volcano objects.

        Args:
            cv (Tk.canvas): the canvas in which the rocket is drawn.
            x (float): x-coordinate of the rocketlauncher.
            rps (float): the number of rockets to spawn per second.
            colors (list of string): the colors of the rockets to spawn.

        """
        super().__init__(cv)
        self.cid = cv.create_polygon(x - 12, 530,  # size and color are fixed
                                     x + 12, 530,  # (can be parametrized)
                                     x, 500,
                                     fill="red")
        self.x = x
        self.rps = rps
        self.colors = colors
        self._tospawn = 0

    def update(self, dt):
        """Continuously emits new random particles and updates them.

        Args:
            dt (float): the time that has passed after the last update (in s).

        """
        self.age += dt
        for p in self.particles:
            p.update(dt)

        self._tospawn += self.rps * dt
        color = choice(self.colors)
        for i in range(int(self._tospawn)):
            angle = uniform(-0.25, 0.25)
            speed = -uniform(80.0, 200.0)
            pattern = choice([
                lambda: (uniform(0, 80), uniform(-.25, .25) + angle),
                lambda: (-uniform(0, 80), uniform(-.45, .45) + angle),
                lambda: (-uniform(20, 80), vonmisesvariate(2*pi, 0)),
                None])
            vx = sin(angle) * speed
            vy = cos(angle) * speed
            self.particles.append(
                Rocket(cv=self.cv, x=self.x, y=500, pcolor=color, vx=vx, vy=vy,
                       pattern=pattern))
        self._tospawn -= int(self._tospawn)


def simulate(cv, objects):
    """Fireworks simulation loop.

        Args:
            cv (float): the canvas in which the firework objects are drawn.
            objects (float): the firework objects.

        """
    t = time()
    while running:
        sleep(0.01)
        tnew = time()
        t, dt = tnew, tnew - t
        for o in objects:
            o.update(dt)
        cv.update()


def close(*ignore):
    """Stops simulation loop and closes the window."""
    global running
    running = False
    root.destroy()


if __name__ == '__main__':
    root = tk.Tk()
    cv = tk.Canvas(root, height=600, width=800)
    cv.create_rectangle(0, 0, 800, 600, fill="midnight blue")  # sky
    cv.create_rectangle(0, 450, 800, 600, fill="gray11")  # ground
    cv.pack()

    cols = ["red", "green", "blue", "gold", "cyan",
            "yellow2", "magenta2", "firebrick1",
            "deep pink", "orange", "silver",
            "dark turquoise", "spring green"]

    v1 = Volcano(cv, 400, 100, cols)
    n1 = NumberDrawer(cv, 200, 500, 0.2, 2, cols, 500)
    n2 = NumberDrawer(cv, 350, 500, 0.2, 0, cols, 500)
    n3 = NumberDrawer(cv, 500, 500, 0.2, 1, cols, 500)
    n4 = NumberDrawer(cv, 650, 500, 0.2, 7, cols, 500)
    r0 = RocketLauncher(cv, 100, 0.5, cols)
    r1 = RocketLauncher(cv, 300, 0.5, cols)
    r2 = RocketLauncher(cv, 500, 0.5, cols)
    r3 = RocketLauncher(cv, 700, 0.5, cols)
    objects = [v1, r0, r1, r2, r3, n1, n2, n3, n4]

    # close with [ESC] or (x) button
    root.bind('<Escape>', close)
    root.protocol("WM_DELETE_WINDOW", close)

    running = True
    root.after(500, simulate, cv, objects)
    if "idlelib" not in modules:
        root.mainloop()
