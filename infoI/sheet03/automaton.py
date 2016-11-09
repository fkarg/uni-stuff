"""Moore automaton for a vending machine."""


def next_state(state, inp):
    """Calculate the successor state for a given state and input.

    Args:
      state (int): a natural number, representing the automaton's current state
      inp (string): a string representing the automaton's input

    Returns:
      int: a natural number, representing the automaton's successor state

    """

    if state > 8:
        state -= 9
    elif state > 5:
        state -= 6

    if inp == 'inp50' and state < 4:
        return state + 1
    elif inp == 'inp100' and state < 4:
        return state + 2
    elif inp == 'reqCoke' and state >= 3:
        return state + 3
    elif inp == 'reqEnergy' and state >= 4:
        return state + 5

    return state


def output(state):
    """Calculate the output in a given state.

    Args:
      state (int): a natural number, representing the automaton's current state

    Returns:
      string: the output of the automaton

    """

    if state > 8:
        return "ENERGY"
    elif state > 5:
        return "COKE"

    return str(state * 50) + "ct"


def automaton():
    """Main loop of the automaton."""
    state = 0
    while True:
        state = next_state(state, input('> '))
        print(output(state))


if __name__ == '__main__':
    automaton()
