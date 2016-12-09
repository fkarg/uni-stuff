#! /usr/bin/python3
"""Program to crack a with a ceaser-streamcipher encrypted text file 
with the filename given as argument, writing (even maybe wrong so)
decrypted file to <stdio>.
"""

from caesar import caesar


if __name__ == '__main__':
    import sys

    if len(sys.argv) != 2:
        print("Usage: " + sys.argv[0] + " <textfile-to-decrypt>.\n\n" +
              "The Text is supposed to coherently be encrypted in \n" +
              "the caeser-stream-cipher, and long enough to be \n" +
              "successfully be decrypted")

    else:
        try:
            f = open(sys.argv[1], 'r')
            f.seek(0)
            text = "\n".join(str(f.read()).splitlines())
            f.close()

            occ = {'e': 0}
            list(map((lambda x: occ.__setitem__(x, occ.get(x, 0) + 1)),
                     text.lower()))
            (m, c) = max([(occ[k], k) for k in occ.keys()
                         if k in "abcdefghijklmnopqrstuvw"])
            print(caesar(text, ord('e') - ord(c)))

        except FileNotFoundError:
            print("Could not find File! Does it exist?")
        except:
            raise
