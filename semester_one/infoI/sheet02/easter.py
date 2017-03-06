# Aufgabe 2.4
# ===========
"""Osterformel

Authors:
    Felix Karg <felix.karg@uranus.uni-freiburg.de>

.. _`Wikipedia: Osterformel`:
    https://de.wikipedia.org/wiki/Gau%C3%9Fsche_Osterformel#Eine_erg.\
    C3.A4nzte_Osterformel

"""


# Aufgabe a
# ---------
def easterdate(year):
    """ Calculates the date and month of easter in year @year.

    Args:
        year (int) in which the date of easter should be calculated.

    Return:
        string with 'month DD' of easter in @year.
    """

    # Säkularzahl
    K = year // 100

    # die säkulare Mondschaltung
    M = 15 + (3 * K + 3) // 4 - (8 * K + 13) // 25

    # die säkulare Sonnenschaltung
    S = 2 - (3 * K + 3) // 4

    # den Mondparameter
    A = year % 19

    # den Keim für den ersten Vollmond im Frühling
    D = (19 * A + M) % 30

    # die kalendarische Korrekturgröße
    R = (D + A // 11) // 29

    # die Ostergrenze
    OG = 21 + D - R

    # den ersten Sonntag im März
    SZ = 7 - (year + year // 4 + S) % 7

    # die Entfernung des Ostersonntags von der Ostergrenze
    # (Osterentfernung in Tagen)
    OE = 7 - (OG - SZ) % 7

    # Das Datum des Ostersonntages als Märzdatum
    OS = OG + OE

    month = "march "

    # if the month isn't march anymore
    if OS > 31:
        month = "april "
        OS -= 31

    return month + str(OS)


# Aufgabe b
# ---------
def printeaster(first, final):
    """Prints the dates of easter from year @first until year @final

    Args:
        first (int), final (int), first < final.
        The years for which easter should be calculated

    Return:
        None, print on stdout.
    """

    # Default-header
    print("year    day\n" + 16 * "-")

    # formatting for each year on new line:
    for year in range(first, final + 1):
        print(year, "   " + easterdate(year))
