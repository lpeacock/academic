import org.junit.Assert;
//import static org.junit.Assert.*;
// org.junit.Before;
import org.junit.Test;

/**
*Class that tests class Spherocylinder.
*Project 08
*@author Lucas Peacock
*@version 1 November 2017
*/

public class SpherocylinderTest {


    /**
    *Method to test a label that is null.
    */
   @Test public void setNullLabelTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      boolean value = sc.setLabel(null);
      Assert.assertEquals("Label is not supposed to be set. "
            + "Boolean should be false.", false, value);
   }
   /**
    *Method to test a label that is set and returned.
    */

   @Test public void setLabelTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      sc.setLabel("test");
      String label = sc.getLabel();
      Assert.assertEquals("String label should of returned as test",
            "test", label);
   }
   /**
    *Method to test setting a negative radius which is not allowed.
    */

   @Test public void setNegativeRadiusTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      boolean value = sc.setRadius(-1);
      Assert.assertEquals("Setting of negative radi are not allowed. ",
             false, value);
   }
   /**
    *Method to test setting a valid radius and if it returns right.
    */

   @Test public void setRadiusTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      sc.setRadius(1);
      double radius = sc.getRadius();
      Assert.assertEquals("Should of returned with double 1.0",
             1.0, radius, 0.0000001);
   }
   /**
    *Method to test setting a negative cylinder height.
    */

   @Test public void setNegativeHeightTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      boolean value = sc.setCylinderHeight(-1);
      Assert.assertEquals("Setting of negative heights are not allowed. ",
             false, value);
   }
   /**
    *Method to test setting a valid cylinder height.
    */

   @Test public void setHeightTest() {
      Spherocylinder sc = new Spherocylinder("input", 0, 0);
      boolean value = sc.setCylinderHeight(1);
      double height = sc.getCylinderHeight();
      Assert.assertEquals("Should of returned with double 1.0",
             1.0, height, 0.0000001);
   }
   /**
    *Method to test the circumference method.
    */

   @Test public void testCircumference() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      double value = sc.circumference();
      Assert.assertEquals("Should return 2 * pi",
             (Math.PI * 2), value, 0.000001);
   }
   /**
    *Method to test the surface area method.
    */

   @Test public void testSurfaceArea() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      double value = sc.surfaceArea();
      Assert.assertEquals("Setting return the SA of a sc with " 
             + "radius of 1 and height of 1", (2 * Math.PI * 1 * (2 + 1)),
              value, 0.000001);
   }
   /**
    *Method to test the volume method.
    */

   @Test public void testVolume() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      double value = sc.volume();
      Assert.assertEquals("Setting return the volume of a sc with " 
             + "radius of 1 and height of 1", (Math.PI * Math.pow(1, 2)
            * ((4.0 / 3.0) * 1 + 1)), value, 0.000001);
   }
   /**
   *Method to test the to String method.
   */
   @Test public void testToString() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      String testString = sc.toString();
      char testCharacter = testString.charAt(0);
      Assert.assertEquals("Set to test the first char of to String",
            'S', testCharacter);
   }
   /**
   *Mehtod to test the reset count method.
   */
   @Test public void testResetCount() {
      Spherocylinder.resetCount();
      Assert.assertEquals("Set to test the first itteration of count",
           0, Spherocylinder.getCount());
   }
   /**
   *Method to test the get count Method.
   */
   @Test public void testGetCount() {
      Spherocylinder.resetCount();
      Assert.assertEquals("Set to test the first itteration of count",
           0, Spherocylinder.getCount());
   }
   /**
   *Method to test the hash code method.
   */
   @Test public void testHashCode() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      Assert.assertEquals("Should return 0 type int",
           0, sc.hashCode());
   
   }
   /**
   *Method to test the equals function with different paramaters.
   */
   @Test public void testEqualsLabelFault() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      Spherocylinder sc2 = new Spherocylinder("input2", 1, 1);
      Assert.assertEquals("Should return false",
           false, sc.equals(sc2));
   }
   /**
   *Method to test the equals function with the same objects.
   */
   @Test public void testEquals() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      Spherocylinder sc2 = new Spherocylinder("input", 1, 1);
      Assert.assertEquals("Should return true",
           true, sc.equals(sc2));
   }
   /**
   *Method to test the equals function with different paramaters.
   */
   @Test public void testEqualsRadiusFault() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      Spherocylinder sc2 = new Spherocylinder("input", 2, 1);
      Assert.assertEquals("Should return false",
           false, sc.equals(sc2));
   }
   /**
   *Method to test the equals function with different paramaters.
   */
   @Test public void testEqualsHeightFault() {
      Spherocylinder sc = new Spherocylinder("input", 1, 1);
      Spherocylinder sc2 = new Spherocylinder("input", 1, 2);
      Assert.assertEquals("Should return false",
           false, sc.equals(sc2));
   }
   /**
   *Method to test the equals function with different paramaters.
   */
   @Test public void testEqualsFault() {
      String test = "Not a Spheroylinder.";
      Spherocylinder sc2 = new Spherocylinder("input2", 2, 1);
      Assert.assertEquals("Should return false",
           false, sc2.equals(test));
   }



}