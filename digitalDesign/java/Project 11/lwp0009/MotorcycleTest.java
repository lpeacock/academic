import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;
   
 /**
*Class MotorcycleTest. 
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/


public class MotorcycleTest {
   /**
   *Method to test tostring version 0.
   *@throws NegativeValueException just in case
   */
   @Test public void toStringTest() throws NegativeValueException {
      Motorcycle bike1 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, false, 750);
      String test = bike1.toString();
      Assert.assertEquals("Should be B", 'B', test.charAt(0));
   }
    /**
   *Method to test tax version 0.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest() throws NegativeValueException {
      Motorcycle bike1 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, false, 750);
      double test = bike1.useTax();
      Assert.assertEquals("Should be 280", 280, test, 0.00001);
   }
    /**
   *Method to test toString version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest1() throws NegativeValueException {
      Motorcycle bike2 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, true, 750);
      String test = bike2.toString();
      Assert.assertEquals("Should be B", 'B', test.charAt(0));
   }
    /**
   *Method to test tax version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest1() throws NegativeValueException {
      Motorcycle bike2 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, true, 750);
      double test = bike2.useTax();
      Assert.assertEquals("Should be 245", 245, test, 0.00001);
   }
    /**
   *Method to test toString version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest2() throws NegativeValueException {
      Motorcycle bike3 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, true, 470);
      String test = bike3.toString();
      Assert.assertEquals("Should be B", 'B', test.charAt(0));
   }
    /**
   *Method to test tax version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest2() throws NegativeValueException {
      Motorcycle bike3 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, true, 450);
      bike3.setEngineSize(470);
      double test = bike3.useTax();
      Assert.assertEquals("Should be 245", 35, test, 0.00001);
   }
    /**
   *Method to test tostring version 3.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest3() throws NegativeValueException {
      Motorcycle bike3 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, false, 470);
      String test = bike3.toString();
      Assert.assertEquals("Should be B", 'B', test.charAt(0));
   }
    /**
   *Method to test tax version 3.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest3() throws NegativeValueException {
      Motorcycle bike4 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, false, 470);
      double test = bike4.useTax();
      Assert.assertEquals("Should be 245", 70, test, 0.00001);
   }
    /**
   *Method to test engize size.
   *@throws NegativeValueException just in case
   */

   @Test public void engineSizeTest() throws NegativeValueException {
      Motorcycle bike4 = new Motorcycle("Brando, Marlon",
         "1964 Harley-Davidson Sportster",
         14000, false, 470);
      Assert.assertEquals("Should be 470", 470, bike4.getEngineSize(), 0.00001);
   }
   
}
