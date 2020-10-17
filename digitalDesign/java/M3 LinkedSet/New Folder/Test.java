import java.util.Iterator;


public class Test {

   public static void main(String[] args) {
      LinkedSet<Integer> test = new LinkedSet<Integer>();
      LinkedSet<Integer> test2 = new LinkedSet<Integer>();
      test.add(1);
      test.add(2);
      test.add(3);
      test2.add(2);
      test2.add(3);
      test2.add(4);
      test2.add(5);
      test2.add(0);
      Set<Integer> test3 = test.union(test2);
      System.out.println(test3);
   
   }
}
