package secondhighest;



public class Main {

    public static void main(String[] arg0) {
        //
        System.out.println("working");
    }

    public static int secondHighest(int[] numbers) {
        int highest = Integer.MIN_VALUE;
        int secondh = Integer.MIN_VALUE;

        for (int i = 0; i < numbers.length; i++) {
            if (numbers[i] > highest) {
                secondh = highest;
                highest = numbers[i];
            }
        }

        return secondh;
    }
}
