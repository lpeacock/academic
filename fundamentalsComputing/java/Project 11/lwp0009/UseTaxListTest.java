import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;
import java.io.FileNotFoundException;
/**
*Test class for useTaxList.
*Project 10
*@author Lucas Peacock
*@version 1 December 2017
*/


public class UseTaxListTest {


     
  /**
  *Method to test summary.
  *@throws FileNotFoundException for file  readin

  */
   @Test public void summaryTest() throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      String test = t.summary();
      t.setTaxDistrict("Auburn, AL");
      char testChar = test.charAt(0);
      Assert.assertEquals("Should be -", '-', testChar);
   }
   /**
  *Method to test excludedRecords.
  *@throws FileNotFoundException for file  readin
  */

   @Test public void excludedRecordsTest0()  throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      String test = t.listByOwner();
      char testChar = test.charAt(0);
      Assert.assertEquals("DShould be -.", '-', testChar);
   
   }
   /**
  *Method to test excludedrecords.
  *@throws FileNotFoundException for file  readin
  */

   @Test public void excludedRecordsTest() throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      String test = t.excludedRecordsList();
      char testChar = test.charAt(0);
      Assert.assertEquals("Should be -", '-', testChar);
   
   }
   /**
  *Method to test vehicle list instance.
  *@throws FileNotFoundException for file  readin
  */

   @Test public void vehicleListTest() throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      Assert.assertEquals("Should be true", 
               t.getVehicleList() instanceof Vehicle[], true);
   
   }
   /**
  *Method to test excludedrecords instance.
  *@throws FileNotFoundException for file  readin
  */

   @Test public void excludedRecordsTest2() throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      Assert.assertEquals("Should be true", 
               t.getExcludedRecords() instanceof String[], true);
   
   }
   /**
   *Tests the hash code.
   *@throws NegativeValueException just in case
   */
   @Test public void hashCodeTest() throws NegativeValueException {
      Car car3 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);
      Assert.assertEquals("0", 
               0, car3.hashCode());
   
   }
   /**
   *Tests same instances.
   *@throws NegativeValueException just in case
   */
   @Test public void equalsTest() throws NegativeValueException {
      Car car3 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);
      Car car2 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);
      Assert.assertEquals("Should be true", 
               true, car3.equals(car2));
   
   
   }
   /**
   *Tests different instances.
   *@throws NegativeValueException just in case
   */
   @Test public void noEqualsTest() throws NegativeValueException {
      Car car3 = new Car("Smith, Pat", "2015 Mercedes-Benz Coupe",
         110000, false);
      String car2 = "Wrong";
      Assert.assertEquals("Should be false", 
               false, car3.equals(car2));
   
   
   }


   
   
}
