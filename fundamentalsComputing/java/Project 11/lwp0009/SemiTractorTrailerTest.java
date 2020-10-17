import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

 /**
*Class SemiTractorTrailerTest. 
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/

public class SemiTractorTrailerTest {

    /**
    *Method to test to string.
    *@throws NegativeValueException just in case
    */
   @Test public void toStringTest() throws NegativeValueException {
      SemiTractorTrailer semi1 = new SemiTractorTrailer("Williams, Pat",
         "2012 International Big Boy",
         45000, false, 5.0, 4);
      String test = semi1.toString(); 
      Assert.assertEquals("Should be W", 'W', test.charAt(0));
   }
   /**
   *Method to test tax.
   *@throws NegativeValueException just in case
   */
   @Test public void taxTest() throws NegativeValueException {
      SemiTractorTrailer semi1 = new SemiTractorTrailer("Williams, Pat",
         "2012 International Big Boy",
         45000, false, 5.0, 4);
      double test = semi1.useTax();
      Assert.assertEquals("Should be 3150", 3150, test, 0.00001);
   }
   /**
   *Method to test axles.
   *@throws NegativeValueException just in case
   */
   @Test public void axlesTest() throws NegativeValueException {
      SemiTractorTrailer semi1 = new SemiTractorTrailer("Williams, Pat",
         "2012 International Big Boy",
         45000, false, 5.0, 4);
      semi1.setAxles(3);
      Assert.assertEquals("Should be 3", 3, semi1.getAxles());
   }
   
   

   
}
