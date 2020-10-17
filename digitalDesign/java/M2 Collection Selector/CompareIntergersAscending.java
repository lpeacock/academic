import java.util.Comparator;

public class CompareIntergersAscending implements Comparator<Integer> {

   public int compare(Integer a, Integer b){
      return a.compareTo(b);
   }
}

