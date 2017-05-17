package caesarcipher;

public class Main {
    public static void main(String[] arg0) {
        // Debug-stuff
        // System.out.println("working2");
        // System.out.println(encode("middle-Outz", 2));
        // System.out.println((int) 'a'); // 97
        // System.out.println((int) 'z'); // 122
        // System.out.println((int) 'A'); // 65
        // System.out.println((int) 'Z'); // 90
    }


    public static String encode(String input, int shift) {
        return input.chars()                    // taking the stream of chars from the String
            .map(s -> encodeChar(s, shift))     // mapping the encoding over the Stream
            .collect(StringBuilder::new,        // recollecting the Stream
                     StringBuilder::appendCodePoint, StringBuilder::append)
            .toString();                        // turning it back into a String
    }

    public static int encodeChar(int s, int shift) {
        if (s > 122 || s < 65 || (s > 90 && s < 97)) {
            return s; // s is not within 'a-z' or 'A-Z'. simply return it.
        } else {
            // otherwise shift the char.
            int chr2 = s + shift;
            // watch out for it having shifted out of bounds, get it back in.
            return (char) (chr2 > 122 ? chr2 - 26 : chr2 < 97 && chr2 > 90 ? chr2 - 26 : chr2);
        }
    }
}
