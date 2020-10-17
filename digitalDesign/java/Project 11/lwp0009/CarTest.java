import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

 /**
*Class CarTest. 
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/

public class CarTest {


   /**
   *Method to test settting/getting owner.
   *@throws NegativeValueException just in case
   */
   @Test public void ownerTest() throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      car1.setOwner("me");
      Assert.assertEquals("Should be me", "me", car1.getOwner());
   }
   /**
   *Method to test yearMakeModel info.
   *@throws NegativeValueException just in case
   */

   @Test public void infoTest() throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      car1.setYearMakeModel("test");
      Assert.assertEquals("Should be test", "test", car1.getYearMakeModel());
   } 
   /**
   *Method to test the value setting of a car.
   *@throws NegativeValueException just in case
   */

   @Test public void valueTest() throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      car1.setValue(100);
      Assert.assertEquals("Should be 100", 100, car1.getValue(), 0.000001);
   }
   /**
   *Method to test alt fuel setting.
   *@throws NegativeValueException just in case
   */

   @Test public void fuelTest() throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      car1.setAlternativeFuel(true);
      Assert.assertEquals("Should be true", true, car1.getAlternativeFuel());
   }
   /**
   *Method to test the vehicle counter.
   *@throws NegativeValueException just in case
   */

   @Test public void countTest()throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      car1.resetVehicleCount();
      Car car2 = new Car("Jones, Jo", "2017 Honda Accord", 22000, true);
      Assert.assertEquals("Should be 1", 1, car1.getVehicleCount());
   }
   /**
   *Method to test toString version 0.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest()throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      String test = car1.toString();
      Assert.assertEquals("Should be J", 'J', test.charAt(0));
   }
   /**
   *Method to test tax version 0.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest() throws NegativeValueException {
      Car car1 = new Car("Jones, Sam", "2017 Honda Accord", 22000, false);
      double test = car1.useTax();
      Assert.assertEquals("Should be 220", 220, test, 0.00001);
   }
   /**
   *Method to test toString version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest1() throws NegativeValueException {
      Car car2 = new Car("Jones, Jo", "2017 Honda Accord", 22000, true);
      String test = car2.toString();
      Assert.assertEquals("Should be J", 'J', test.charAt(0));
   }
   /**
   *Method to test tax version 1.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest1() throws NegativeValueException {
      Car car2 = new Car("Jones, Jo", "2017 Honda Accord", 22000, true);
      double test = car2.useTax();
      Assert.assertEquals("Should be 110", 110, test, 0.00001);
   }
   /**
   *Method to test toString version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest2() throws NegativeValueException {
      Car car3 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);      
      String test = car3.toString();
      Assert.assertEquals("Should be S", 'S', test.charAt(0));
   }
   /**
   *Method to test tax version 2.
   *@throws NegativeValueException just in case
   */

   @Test public void taxTest2() throws NegativeValueException {
      Car car3 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);
      double test = car3.useTax();
      Assert.assertEquals("Should be 3300", 3300, test, 0.00001);
   }
   /**
   *Method to test toString version 3.
   *@throws NegativeValueException just in case
   */

   @Test public void toStringTest3() throws NegativeValueException {
      Car car4 = new Car("Smith, Jack", "2015 Mercedes-Benz Coupe",
         110000, true); 
      String test = car4.toString();
      Assert.assertEquals("Should be S", 'S', test.charAt(0));
   }
   
   /**
   *Method to test tax version 3.
   *@throws NegativeValueException just in case
   */
 
   @Test public void taxTest3() throws NegativeValueException {
      Car car4 = new Car("Smith, Jack", "2015 Mercedes-Benz Coupe",
         110000, true); 
      double test = car4.useTax();
      Assert.assertEquals("Should be 2750", 2750, test, 0.00001);
   }
   
     
}
