package maximumhourglass;

public class Main {

   public static void main(String[] arg0) {
       /*  Debug
       int max = maxHourglass(new int[][]{
           { 0, 0, 0, 0, 0, 0 },
           { 0, 0, 0, 0, 0, 0 },
           { 0, 0, 0, 0, 0, 0 },
           { 0, 0, 0, 1, 1, 1 },
           { 0, 0, 0, 0, 1, 0 },
           { 0, 0, 0, 1, 1, 1 }
       });
       System.out.println(max);
       */
   }

   public static int maxHourglass(int[][] matrix) {
       int max = 0;
       int sum = 0;

       // iterating through the matrix, looking for each sum
       for (int i = 0; i < 4; i++) {
           for (int j = 0; j < 4; j++) {
               sum = 0;
               /* Debug
               System.out.print(matrix[i][j]);
               System.out.print(matrix[i][j+1]);
               System.out.print(matrix[i][j+2]);
               System.out.print(matrix[i+1][j+1]);
               System.out.print(matrix[i+2][j]);
               System.out.print(matrix[i+2][j+1]);
               System.out.println(matrix[i+2][j+2]);
               */
               sum += matrix[i][j];
               sum += matrix[i][j+1];
               sum += matrix[i][j+2];
               sum += matrix[i+1][j+1];
               sum += matrix[i+2][j];
               sum += matrix[i+2][j+1];
               sum += matrix[i+2][j+2];
               if (sum > max) {
                   max = sum;
                   /* Debug
                   System.out.print("i: ");
                   System.out.print(i);
                   System.out.print(", j: ");
                   System.out.print(j);
                   System.out.print(", max: ");
                   System.out.println(max);
                   */
               }
           }
       }
       return max;
   }
}
