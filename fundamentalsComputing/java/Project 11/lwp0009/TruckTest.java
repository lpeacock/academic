import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

 /**
*Class TruckTest. 
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/

public class TruckTest {
   /**
   *Method to test toString version 0.
   *@throws NegativeValueException just in case
   */
   @Test public void toStringTest() throws NegativeValueException {
      Truck truck1 = new Truck("Williams, Jo", "2012 Chevy Silverado",
         30000, false, 1.5);
      String test = truck1.toString();
      Assert.assertEquals("Should be W", 'W', test.charAt(0));
   }
 /**
   *Method to test tax version 0.
   *@throws NegativeValueException just in case
   */
  
   @Test public void taxTest() throws NegativeValueException {
      Truck truck1 = new Truck("Williams, Jo", "2012 Chevy Silverado",
         30000, false, 1.5);
      double test = truck1.useTax();
      Assert.assertEquals("Should be 600", 600, test, 0.000001);
   }
   /**
   *Method to test toString version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest1() throws NegativeValueException {
      Truck truck1 = new Truck("Williams, Jo", "2012 Chevy Silverado",
         30000, true, 1.5);
      String test = truck1.toString();
      Assert.assertEquals("Should be W", 'W', test.charAt(0));
   }
   /**
   *Method to test tax version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest1() throws NegativeValueException {
      Truck truck1 = new Truck("Williams, Jo", "2012 Chevy Silverado",
         30000, true, 1.5);
      double test = truck1.useTax();
      Assert.assertEquals("Should be 600", 300, test, 0.000001);
   }
   /**
   *Method to test toString version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest2() throws NegativeValueException {
      Truck truck2 = new Truck("Williams, Sam", "2010 Chevy Mack",
         40000, true, 2.5);        
      String test = truck2.toString();
      Assert.assertEquals("Should be W", 'W', test.charAt(0));
   }
   /**
   *Method to test tax version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest2() throws NegativeValueException {
      Truck truck2 = new Truck("Williams, Sam", "2010 Chevy Mack",
         40000, true, 2.5);        
      double test = truck2.useTax();
      Assert.assertEquals("Should be 1600", 1600, test, 0.000001);
   }
   /**
   *Method to test toString version 3.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest3() throws NegativeValueException {
      Truck truck2 = new Truck("Williams, Sam", "2010 Chevy Mack",
         40000, false, 2.5);        
      String test = truck2.toString();
      Assert.assertEquals("Should be W", 'W', test.charAt(0));
   }
   /**
   *Method to test tax verison 3. 
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest3() throws NegativeValueException {
      Truck truck2 = new Truck("Williams, Sam", "2010 Chevy Mack",
         40000, false, 2.5);        
      double test = truck2.useTax();
      Assert.assertEquals("Should be 2000", 2000, test, 0.000001);
   }
  /**
   *Method to test weight(tons).
   *@throws NegativeValueException just in case
   */
 
   @Test public void weightTest() throws NegativeValueException {
      Truck truck2 = new Truck("Williams, Sam", "2010 Chevy Mack",
         40000, false, 2.5);        
      truck2.setTons(3);
      Assert.assertEquals("Should be 3", 3, truck2.getTons(), 0.000001);
   }

   
   


}
