/**
 * SortingLabClient.java
 *
 * Provides a simple example client of SortingLab.java.
 *
 * NOTE: The generic type of SortingLab must be bound
 *       to a Comparable type. The sorting methods in
 *       SortingLab use the natural ordering of the
 *       elements in the parameter array.
 *
 * @author    Dean Hendrix (dh@auburn.edu)
 * @version   2018-09-16
 *
 */
public final class SortingLabClient {

   /** Drives execution. */
   public static void main(String[] args) {
   
      //instantiate the SortingLab class
      //using your Banner ID number as the key value
      int key = 903830703;
      SortingLab<String> sls = new SortingLab<String>(key);
   
     // run each sort a few times before trying to
      //collect timing data
      String[] as = {"D", "B", "E", "C", "A"};
      for (int i = 0; i < 10; i++) {
         sls.sort1(as);
         sls.sort2(as);
         sls.sort3(as);
         sls.sort4(as);
         sls.sort5(as);
      }
   
     // generate timing data for one sort method using
      //the "doubling strategy" from lecture and lab
      SortingLab<Integer> sli = new SortingLab<Integer>(key);
      int M = 200000; // max capacity for array
      int N = 1000;   // initial size of array
      int counter = 1;
      double start;
      double elapsedTime1;
      double elapsedTime2;
      double elapsedTime3;
      double elapsedTime4;
      double elapsedTime5;
      
      System.out.println("Randomized Array");
      System.out.println("Run\tN\t\t\tSort1\t\tSort2\t\tSort3\t\tSort4\t\tSort5");
      System.out.println("-----------------------------------------------------------------");
      for (; N < M; N *= 2) {
         //Sort1
         Integer[] ai1 = getIntegerArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort1(ai1);
         elapsedTime1 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort2
         Integer[] ai2 = getIntegerArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort2(ai2);
         elapsedTime2 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort3
         Integer[] ai3 = getIntegerArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort3(ai3);
         elapsedTime3 = (System.nanoTime() - start) / 1_000_000_000d;
            //Sort4
         Integer[] ai4 = getIntegerArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort4(ai4);
         elapsedTime4 = (System.nanoTime() - start) / 1_000_000_000d;
            //Sort5
         Integer[] ai5 = getIntegerArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort5(ai5);
         elapsedTime5 = (System.nanoTime() - start) / 1_000_000_000d;
      
         System.out.print(counter + "\t\t");
         System.out.printf("%-7d\t", N);
         System.out.printf("%-5.4f\t", elapsedTime1);
         System.out.printf("%-5.4f\t", elapsedTime2);
         System.out.printf("%-5.4f\t", elapsedTime3);
         System.out.printf("%-5.4f\t", elapsedTime4);
         System.out.printf("%-5.4f\n", elapsedTime5);
      
         counter++;
      }
      counter = 0;
      N = 1000; 
      System.out.println("\nAscending Array");
      System.out.println("Run\tN\t\t\tSort1\t\tSort2\t\tSort3\t\tSort4\t\tSort5");
      System.out.println("-----------------------------------------------------------------");
      for (; N < M; N *= 2) {
         //Sort1
         Integer[] ai1 = getAscendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort1(ai1);
         elapsedTime1 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort2
         Integer[] ai2 = getAscendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort2(ai2);
         elapsedTime2 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort3
         Integer[] ai3 = getAscendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort3(ai3);
         elapsedTime3 = (System.nanoTime() - start) / 1_000_000_000d;
            //Sort4
         Integer[] ai4 = getAscendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort4(ai4);
         elapsedTime4 = (System.nanoTime() - start) / 1_000_000_000d;
            //Sort5
         Integer[] ai5 = getAscendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort5(ai5);
         elapsedTime5 = (System.nanoTime() - start) / 1_000_000_000d;
      
         System.out.print(counter + "\t\t");
         System.out.printf("%-7d\t", N);
         System.out.printf("%-5.4f\t", elapsedTime1);
         System.out.printf("%-5.4f\t", elapsedTime2);
         System.out.printf("%-5.4f\t", elapsedTime3);
         System.out.printf("%-5.4f\t", elapsedTime4);
         System.out.printf("%-5.4f\n", elapsedTime5);
      
         counter++;
      }
      counter = 0;
      N = 1000; 
      System.out.println("\nDecesending Array");
      System.out.println("Run\tN\t\t\tSort1\t\tSort2\t\tSort3\t\tSort4\t\tSort5");
      System.out.println("-----------------------------------------------------------------");
      for (; N < M; N *= 2) {
         //Sort1
         Integer[] ai1 = getDecesendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort1(ai1);
         elapsedTime1 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort2
         Integer[] ai2 = getDecesendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort2(ai2);
         elapsedTime2 = (System.nanoTime() - start) / 1_000_000_000d;
         //Sort3
         Integer[] ai3 = getDecesendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort3(ai3);
         elapsedTime3 = (System.nanoTime() - start) / 1_000_000_000d;
            //Sort4
         Integer[] ai4 = getDecesendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort4(ai4);
         elapsedTime4 = (System.nanoTime() - start) / 1_000_000_000d;
           // Sort5
         Integer[] ai5 = getDecesendingArray(N, Integer.MAX_VALUE);
         start = System.nanoTime();
         sli.sort5(ai5);
         elapsedTime5 = (System.nanoTime() - start) / 1_000_000_000d;
      
         System.out.print(counter + "\t\t");
         System.out.printf("%-7d\t", N);
         System.out.printf("%-5.4f\t", elapsedTime1);
         System.out.printf("%-5.4f\t", elapsedTime2);
         System.out.printf("%-5.4f\t", elapsedTime3);
         System.out.printf("%-5.4f\t", elapsedTime4);
         System.out.printf("%-5.4f\n", elapsedTime5);
      
         counter++;
      }
   
   }

   /** return an array of random integer values. */
   private static Integer[] getIntegerArray(int N, int max) {
      Integer[] a = new Integer[N];
      java.util.Random rng = new java.util.Random();
      for (int i = 0; i < N; i++) {
         a[i] = rng.nextInt(max);
      }
      return a;
   }
   private static Integer[] getAscendingArray(int N, int max) {
      Integer[] a = new Integer[N];
      for (int i = 0; i < N; i++) {
         a[i] = new Integer(i);
      }
      return a;
   }
   private static Integer[] getDecesendingArray(int N, int max) {
      Integer[] a = new Integer[N];
      for (int i = N; i > 0; i--) {
         a[i-1] = new Integer(i);
      }
      return a;
   }

}
