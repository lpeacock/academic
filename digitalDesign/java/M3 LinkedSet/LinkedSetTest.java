import org.junit.Assert;
import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;


public class LinkedSetTest {


   /** A test that always fails. **/
   @Test public void defaultTest() {
      LinkedSet<Integer> test = new LinkedSet<Integer>();
      LinkedSet<Integer> test2 = new LinkedSet<Integer>();
   
      
      test.add(4); 
      test.add(1); 
      test.add(5); 
      test.add(3); 
      test.add(1); 
      test.add(2); 
      Assert.assertEquals("", 10, test.size());
   }
}
