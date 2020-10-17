import java.util.Iterator;


public class Test {

   public static void main(String[] args) {
      LinkedSet<Integer> test = new LinkedSet<Integer>();
      test.add(1);
      test.add(2);
      test.add(3);
      test.add(4);
      test.add(5);
      Iterator<Set<Integer>> it = test.powerSetIterator();
      while (it.hasNext()) {
         System.out.println(it.next());
      }
   }
}
