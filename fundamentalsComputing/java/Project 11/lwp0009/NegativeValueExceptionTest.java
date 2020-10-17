import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

/**
*ExceptionTest for negative values which are not usable.
*Project 11.
*@author Lucas Peacock
*@version 6 December 2017
*/

public class NegativeValueExceptionTest {


  

   /**
    *Test method.
    **/
   @Test public void defaultTest() {
      NegativeValueException t = new NegativeValueException();
      Assert.assertEquals("Should brief the exception",
               'N', t.toString().charAt(0));
   }
}
