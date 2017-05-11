package simplefunctions;

import java.lang.Math;


public class Main {
    public static void main(String[] arg0) {
        // this function is for testing purposes only.
        System.out.println(distanceOrigin(3, 4));
        System.out.println(cubeVolume(8));
        System.out.println(cubeSurface(8));
        System.out.println(stringInsert("Hi there how are you", 8));
        System.out.println(capacitance(12.7, 0.99, 5.05050505050505E-4));
    }


    // Berechnet den Abstand von Punkt (x, y) zum Ursprung.
    public static double distanceOrigin(double x, double y) {
        return Math.sqrt(x * x + y * y);
    }

    // Berechnet das Volumen eines Wuerfels mit Seitenlaenge x.
    public static double cubeVolume(double x) {
        return x * x * x;
    }

    // Berechnet die Oberflaeche eines Wuerfels mit Seitenlaenge x.
    public static double cubeSurface(double x) {
        return x * x * 6;
    }

    // gibt einen neuen String aus, an dem in gegebener Position ein "-" eingefuegt wurde.
    public static String stringInsert(String str, int pos) {
        return str.substring(0, pos) + "_" + str.substring(pos, str.length());
    }

    // Berechnet die Kapazitaet eines Kondensators aus der Dielektrizitaetskonstante, der
    // Flaeche der Kondensatorplatten und der Distanz der Kondensatorplatten.
    public static double capacitance(double epsilonR, double A, double d) {
        return epsilonR * 8.854187817E-12 * A / d;
    }
}


