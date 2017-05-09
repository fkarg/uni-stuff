package simplefunctions;

import java.lang.Math;


public class Main {
    public static void main(String[] arg0) {
        // this function is for testing purposes only.
        System.out.println(distanceOrigin(3, 4));
        System.out.println(cubeVolume(8));
        System.out.println(cubeSurface(8));
        System.out.println(stringInsert("Hi there how are you", 8));
        System.out.println(capacitance(1, 12, 2));
    }


    // Berechnet den Abstand von Punkt (x, y) zum Ursprung.
    public static double distanceOrigin(double x, double y) {
        return Math.sqrt(x * x + y * y);
    }

    // Berechnet das Volumen eines Würfels mit Seitenlänge x.
    public static double cubeVolume(double x) {
        return x * x * x;
    }

    // Berechnet die Oberfläche eines Würfels mit Seitenlänge x.
    public static double cubeSurface(double x) {
        return x * x * 6;
    }

    // gibt einen neuen String aus, an dem in gegebener Position ein "-" eingefügt wurde.
    public static String stringInsert(String str, int pos) {
        return str.substring(0, pos) + "-" + str.substring(pos, str.length());
    }

    // Berechnet die Kapazität eines Kondensators aus der Dielektrizitätskonstante, der
    // Fläche der Kondensatorplatten und der Distanz der Kondensatorplatten.
    public static double capacitance(double epsilonR, double A, double d) {
        return epsilonR * A / d;
    }
}


