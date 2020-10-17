import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

/**
*Class to test Customer.
*Activity 08B
*@author Lucas Peacock
*@version 6 November 2017
*/
public class CustomerTest {


  

   /**
   *Method to test the first set location.
   */
   @Test public void setLocationTest1() {
      Customer cstmr = new Customer("Lane, Jane");
      cstmr.setLocation("Boston, MA");
      Assert.assertEquals("Boston, MA", cstmr.getLocation());
   }
   /**
   *Method to test the second set location.
   */
   @Test public void setLocationTest2() {
      Customer cstmr = new Customer("Lane, Jane");
      cstmr.setLocation("Atlanta", "GA");
      Assert.assertEquals("Atlanta, GA", cstmr.getLocation());
   }
   /**
   *Method to test changing the balance.
   */
   @Test public void changeBalanceTest() {
      Customer cstmr = new Customer("Lane, Jane");
      cstmr.changeBalance(100);
      Assert.assertEquals(100, cstmr.getBalance(), 0.000001);
   }
   /**
   *Method to test to string.
   */
   @Test public void toStringTest() {
      Customer cstmr = new Customer("Lane, Jane");
      cstmr.setLocation("Auburn, AL");
      cstmr.changeBalance(999);
      Assert.assertEquals("Lane, Jane\nAuburn, AL\n$999.0",
         cstmr.toString());
   }
   /**
   *Mehtod to test compare with same balance.
   */
   @Test public void compareToTest1() {
      Customer cstmr1 = new Customer("Lane, Jane");
      cstmr1.changeBalance(500);
   
      Customer cstmr2 = new Customer("Lane, Lois");
      cstmr2.changeBalance(500);
   
      Assert.assertTrue(cstmr1.compareTo(cstmr2) == 0);
   }
   /**
   *Method to compare with a smaller balance.
   */
   @Test public void compareToTest2() {
      Customer cstmr1 = new Customer("Lane, Jane");
      cstmr1.changeBalance(100);
   
      Customer cstmr2 = new Customer("Lane, Lois");
      cstmr2.changeBalance(500);
   
      Assert.assertTrue(cstmr1.compareTo(cstmr2) < 0);
   }
   /**
   *Method to compare with a larger balance.
   */
   @Test public void compareToTest3() {
      Customer cstmr1 = new Customer("Lane, Jane");
      cstmr1.changeBalance(1000);
   
      Customer cstmr2 = new Customer("Lane, Lois");
      cstmr2.changeBalance(500);
   
      Assert.assertTrue(cstmr1.compareTo(cstmr2) > 0);
   }

   
   
}

