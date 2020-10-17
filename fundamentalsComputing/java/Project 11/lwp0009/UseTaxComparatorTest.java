import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;
import java.io.FileNotFoundException;


/**
*Test class for useTaxCompartor.
*Project 10
*@author Lucas Peacock
*@version 1 December 2017
*/

public class UseTaxComparatorTest {

  /**
  *Method to test all of main.
  *@throws  FileNotFoundException for file readin
  */
   @Test public void overallTest() throws FileNotFoundException {
      UseTaxList t = new UseTaxList();
      t.readVehicleFile("vehicles2.txt");
      String test = t.listByUseTax();
      char testChar = test.charAt(0);
      Assert.assertEquals("Should be -", '-', testChar);
   }
}
