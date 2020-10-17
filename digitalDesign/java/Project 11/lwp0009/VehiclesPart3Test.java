import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;
/**
*This class contains the main method test.
*Project 11.
*@author Lucas Peacock
*@version 8 December 2017
*/



public class VehiclesPart3Test {
   

   /** 
   *Tests a good name.
   **/
   @Test public void goodNameTest() {
      Vehicle.resetVehicleCount();
      VehiclesPart3 test = new VehiclesPart3();
      String[] args = {"vehicles2.txt"};
      test.main(args);
      
      Assert.assertEquals("Vehicle Count should be 9",
         9, Vehicle.getVehicleCount());
   }
   /** 
   *Tests a bad name.
   **/
   @Test public void badNameTest() {
      Vehicle.resetVehicleCount();
      VehiclesPart3 test = new VehiclesPart3();
      String[] args = {"notReal.txt"};
      test.main(args);
      
      Assert.assertEquals("Vehicle Count should be 0",
         0, Vehicle.getVehicleCount());
   }
   /** 
   *Tests a no name.
   **/
   @Test public void noNameTest() {
      Vehicle.resetVehicleCount();
      VehiclesPart3 test = new VehiclesPart3();
      String[] args = new String[0];
      test.main(args);
      
      Assert.assertEquals("Vehicle Count should be 0",
         0, Vehicle.getVehicleCount());
   }


}
