package maximumhourglass;

public class Main {

   public static void main(String[] arg0) {
       /*  Debug
       int max = maxHourglass(new int[][]{
           { 1, 1, 1, 0, 0, 0 },
           { 0, 1, 0, 0, 0, 0 },
           { 1, 1, 0, 0, 0, 0 },
           { 0, 0, 0, 1, 1, 1 },
           { 0, 0, 0, 0, 1, 0 },
           { 0, 0, 0, 1, 1, 1 }
       });
       System.out.println(max);
       */
   }

   public static int maxHourglass(int[][] matrix) {
       // setting initial values
       int max = Integer.MIN_VALUE;
       int sum = Integer.MIN_VALUE;

       // iterating through the matrix, looking for each sum
       for (int i = 0; i < 4; i++) {
           for (int j = 0; j < 4; j++) {
               // setting sum
               sum = Integer.MIN_VALUE;
               sum = matrix[i][j];
               sum += matrix[i][j+1];
               sum += matrix[i][j+2];
               sum += matrix[i+1][j+1];
               sum += matrix[i+2][j];
               sum += matrix[i+2][j+1];
               sum += matrix[i+2][j+2];
               if (sum > max) {
                   // updating max if true
                   max = sum;
               }
           }
       }
       return max;
   }
}
