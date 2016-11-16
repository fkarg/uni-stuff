"""Iterated Prisoners Dilemma: Info I Competition Entry."""

from random import seed, randint

###############################################################################
#   YOUR DEFINITIONS FOR EXERCISE 4.1 (b)                                     #
###############################################################################

seed()

# parameter for testing: how many rounds do you want to simulate
ROUNDS = 20


def next_state(state: int, inp: str) -> int:
    """Calculate the successor state for a given state and a input.

    Args:
      state (int): a natural number, representing the automaton's current state
      inp (string): either 'C' or 'D', representing the opponent's
                    last action

    Returns:
      int: a natural number, representing the automaton's successor state

    """
    def isCoop(n):
        return n % 2 == 0

    new = state
    new += 2

    if inp == 'D' and isCoop(state):
        new -= 1

    if inp == 'C' and not isCoop(state):
        new += 1

    if state >= 36:
        new = 41

    return new


def output(state: int) -> str:
    """Calculate the output in a given state.

    Args:
      state (int): a natural number, representing the automaton's current state

    Returns:
      string: the output of the automaton (either 'C' or 'D'),
              representing the next action to perform

    """
    if state % 2 == 0:
        return 'C'
    return 'D'


###############################################################################
#   YOUR DEFINITIONS FOR EXERCISE 4.1 (c)                                     #
###############################################################################


def next_state_opponent(state: int, inp: str) -> int:
    """Calculate the successor state for a given state and a input.

    Args:
      state (int): a natural number, representing the automaton's current state
      inp (string): either 'C' or 'D', representing the opponent's
                    last action

    Returns:
      int: a natural number, representing the automaton's successor state

    """
    def isCoop(n):
        return n % 2 == 0

    new = state

    if inp == 'D' and isCoop(state):
        new += 1

    new += (randint(0, 25) >= 20) * 2

    if state >= 12:
        new = 15

    return new

"""
    if inp == 'C':
        return 0
    return 1
"""


def output_opponent(state: int) -> str:
    """Calculate the output in a given state.

    Args:
      state (int): a natural number, representing the automaton's current state

    Returns:
      string: the output of the automaton (either 'C' or 'D'),
              representing the next action to perform

    """
    if state % 2 == 0:
        return 'C'
    return 'D'


###############################################################################
#   DON'T CHANGE ANYTHING BELOW THIS LINE!                                    #
#   YOU DON'T HAVE TO UNDERSTAND THE FOLLOWING CODE!                          #
###############################################################################


def years(a1: str, a2: str):
    if a1 == 'C' and a2 == 'C':
        return 1
    elif a1 == 'C' and a2 == 'D':
        return 4
    elif a1 == 'D' and a2 == 'C':
        return 0
    elif a1 == 'D' and a2 == 'D':
        return 3


def simulate(fnext1, fout1, fnext2, fout2, n):
    s1, s2 = 0, 0
    y1, y2 = 0, 0
    h1, h2 = '', ''
    for i in range(n):
        a1, a2 = fout1(s1), fout2(s2)
        s1new, s2new = fnext1(s1, a2), fnext2(s2, a1)
        # perform sanity checks (for displaying error messages)
        check_sanity_action(a1, s1, 'main strategy')
        check_sanity_action(a2, s2, 'opponent strategy')
        check_sanity_state(s1new, a1, s1, 'main strategy')
        check_sanity_state(s2new, a2, s2, 'opponent strategy')
        # and aggregate results
        s1, s2 = s1new, s2new
        y1, y2 = y1+years(a1, a2), y2+years(a2, a1)
        h1, h2 = h1+a1, h2+a2
    h = 'you: %s\nhim: %s' % (h1, h2)
    return y1, y2, h


def test_simulate(n: int) -> None:
    # check if main strategy is implemented
    if not is_implemented('next_state', 'output'):
        print('Main strategy not implemented yet, or one of the functions ' +
              'returns None for initial state 0.')
        raise SystemExit

    # case 1: against someone who always cooperates
    y1, y2, h = simulate(next_state, output,
                         lambda x, y: x, lambda x: 'C', n)
    print('Years you get if the other player always cooperates: ' +
          '%d (he gets %d)' % (y1, y2))
    print(h + '\n---')
    # case 2: against someone who always defects
    y1, y2, h = simulate(next_state, output,
                         lambda x, y: x, lambda x: 'D', n)
    print('Years you get if the other player always defects: ' +
          '%d (he gets %d)' % (y1, y2))
    print(h + '\n---')
    # case 3: against yourself
    y1, y2, h = simulate(next_state, output, next_state, output, n)
    print('Years you get if the other player plays the same strategy: %d' % y1)
    print(h + '\n---')

    # check if opponent strategy is implemented
    if not is_implemented('next_state_opponent', 'output_opponent'):
        print('Opponent strategy not implemented yet, or one of the ' +
              'functions returns None for initial state 0.')
        raise SystemExit

    # case 4: against own opponent
    y1, y2, h = simulate(next_state, output,
                         next_state_opponent, output_opponent, n)
    print('Years you get if the other player plays the test strategy: ' +
          '%d (he gets %d)' % (y1, y2))
    print(h+'\n')


def check_sanity_action(a, s, agent):
    if a not in ['C', 'D']:
        print("Error: '%s' (chosen by your %s in state %d)"
              % (str(a), agent, s) + ' is not a valid action!')
        raise SystemExit


def check_sanity_state(s, a, sold, agent):
    if type(s) is not int or s < 0:
        print("Error: '%s' (your %s's reaction to %s in state %d)"
              % (str(s), agent, a, sold) + ' is not a valid state!')
        raise SystemExit


def is_implemented(fnext, fout):
    return (fnext in globals() and
            fout in globals() and
            globals()[fnext](0, 'C') is not None and
            globals()[fnext](0, 'D') is not None and
            globals()[fout](0) is not None)


def getRounds(n: int = 0) -> int:
    if randint(0, 20) == 0:
        return n
    else:
        return getRounds(n+1)

if __name__ == '__main__':
    test_simulate(ROUNDS)
    test_simulate(getRounds())
    test_simulate(getRounds())
    test_simulate(getRounds())
    test_simulate(getRounds())
