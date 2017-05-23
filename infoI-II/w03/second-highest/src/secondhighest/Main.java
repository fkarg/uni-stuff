package secondhighest;



public class Main {

    public static void main(String[] arg0) {
        // Debug
        // System.out.println("working");
        // System.out.println(secondHighest(new int[] {1, 3, 3, 2 }));
    }

    public static int secondHighest(int[] numbers) {
        // setting start values to lowest possible
        int highest = Integer.MIN_VALUE;
        int secondh = Integer.MIN_VALUE;

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] > highest) {
                // updating both if new highest
                secondh = highest;
                highest = numbers[i];
            } else if (numbers[i] > secondh && numbers[i] < highest) {
                // updating second highest if found higher one
                secondh = numbers[i];
            }
        }

        return secondh;
    }
}
