# Aufgabe 4.2 (b)
# ===============


def move_tower(n, source, helper, target):
    print(source, helper, target)
    # assumes n <= len(source)
    if n <= 0:
        return None
    # (1) target und helper werden vertauscht, damit korrekt auf den absoluten
    # Stapel umgeschichtet wird.
    move_tower(n-1, source, target, helper)
    # (2) eine disk wird vom relativen Quell- zum relativen Zielstapel
    # geschoben. (pass by reference ftw ...)
    src_name, src_rod = source
    trg_name, trg_rod = target
    disc = src_rod[-1]
    print("Bewege", disc, "von", src_name, "nach", trg_name)
    del src_rod[-1]
    trg_rod += [disc]
    # (3) die jeweiligen Stäbe werden rotiert, notwendig um nicht größere auf
    # kleinere zu legen.
    move_tower(n-1, helper, source, target)


if __name__ == '__main__':
    move_tower(5, ("Quelle", [5, 4, 3, 2, 1]), ("Hilf", []), ("Ziel", []))
    print('-----------------------------------------------------')
    move_tower(0, ["Quelle", [5, 4, 3, 2, 1]], ["Hilf", []], ["Ziel", []])
    print('-----------------------------------------------------')
    move_tower(1, ["Quelle", [5, 4, 3, 2, 1]], ["Hilf", []], ["Ziel", []])
    print('-----------------------------------------------------')
    move_tower(2, ["Quelle", [5, 4, 3, 2, 1]], ["Hilf", []], ["Ziel", []])
    # print('-----------------------------------------------------')
    # move_tower(6, ("Quelle", [5, 4, 3, 2, 1]), ("Hilf", []), ("Ziel", []))
