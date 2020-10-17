import org.junit.Assert;
import static org.junit.Assert.*;
import java.util.ArrayList;
import java.util.Arrays;
//import org.junit.Before
import org.junit.Test;
import java.util.Collection;


public class SelectorTest {





   @Test public void minAscendingTest() {
      Integer[] coll = new Integer[] {2,8,7,3,4};
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersAscending c = new CompareIntergersAscending();
      Integer min = Selector.min(test, c);
      Assert.assertEquals(2, min.intValue());
   }

   @Test public void minDecendingTest() {
      Integer[] coll = new Integer[] {5,9,1,7,3};
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersDecending c = new CompareIntergersDecending();
      Integer min = Selector.min(test, c);
      Assert.assertEquals(9, min.intValue());
   }

   @Test public void minAscendingTest1() {
      Integer[] coll = new Integer[] {8,7,6,5,4};
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersAscending c = new CompareIntergersAscending();
      Integer min = Selector.min(test, c);
      Assert.assertEquals(4, min.intValue());
   }
   @Test public void minMixTest() {
      Integer[] coll = new Integer[] {8,7,6,5,4};
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersAscending c = new CompareIntergersAscending();
      Integer min = Selector.min(test, c);
      Assert.assertEquals(4, min.intValue());
   }
   @Test public void maxAscendingTest() {
      Integer[] coll = new Integer[] {2,8,7,3,4};
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersAscending c = new CompareIntergersAscending();
      Integer min = Selector.max(test, c);
      Assert.assertEquals(8, min.intValue());
   }
   @Test public void rangeTest() {
      Integer[] coll = new Integer[] {5,9,1,7,3};
      int low = 5;
      int high = 3;
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersDecending c = new CompareIntergersDecending();
      Collection<Integer> range = Selector.range(test, low, high, c);
      Integer[] expectedArray = new Integer[] {5,3};
      Collection<Integer> expected = Arrays.asList(expectedArray);
      Assert.assertEquals(expected, range);
   }
   @Test public void kminTest() {
      Integer[] coll = new Integer[] {5,9,1,7,3};
      int k = 2;
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersDecending c = new CompareIntergersDecending();
      Integer min = Selector.kmin(test, k, c);
      Integer expected = new Integer(7);
      Assert.assertEquals(expected, min);
   }
   @Test public void floorTest() {
      Integer[] coll = new Integer[] {9,7};
      int key = 11;
      Collection<Integer> test = Arrays.asList(coll);
      CompareIntergersAscending c = new CompareIntergersAscending();
      Integer floor = Selector.floor(test, key, c);
      Integer expected = new Integer(9);
      Assert.assertEquals(expected, floor);
   }
   
}
