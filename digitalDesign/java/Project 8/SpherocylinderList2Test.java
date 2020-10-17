import org.junit.Assert;
//import static org.junit.Assert.*;
//import org.junit.Before;
import org.junit.Test;

import java.io.FileNotFoundException;

/**
*Class that tests SpherocylinderList2.
*Project 08
*@author Lucas Peacock
*@version 10 November  2017
*/
public class SpherocylinderList2Test {

   
   /**
   *Method test get name method.
   */
   @Test public void getNameTest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be name \"test\"", "test", sc.getName());
   }
   /**
   *Method to test a null amount of spherocylinders.
   */
   @Test public void zeroNumberOfSpherocylindersTest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be zero", 0, sc.numberOfSpherocylinders());
   }
   /**
   *Method to test a definite amount of spherocylinders.
   */
   @Test public void numberOfSpherocylindersTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should be one", 1, sc2.numberOfSpherocylinders());
   }
   /**
   *Method to test a null amount of spherocylinders regarding SA.
   */
   @Test public void zeroSATest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be zero",
         0.0, sc.totalSurfaceArea(), 0.000001);
   }
   /**
   *Method to test a definate amount of spherocylinders regarding SA.
   */
   @Test public void definiteSATest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should not be zero",
         18.84955592153, sc2.totalSurfaceArea(), 0.000001);
   }
   /**
   *Method to test a null amount of spherocylinders regarding volume.
   */
   @Test public void zeroVolumeTest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be zero",
         0.0, sc.totalVolume(), 0.000001);
   }
   /**
   *Method to test a definate amount of spherocylinders regarding volume.
   */
   @Test public void volumeTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should not be zero",
         7.33038285837, sc2.totalVolume(), 0.000001);
   }
   /**
   *Method to test a null amount of spherocylinders regarding average SA.
   */
   @Test public void zeroAverageSATest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be zero",
         0.0, sc.averageSurfaceArea(), 0.000001);
   }
   /**
   *Method to test a definate amount of spherocylinders regarding
   *average SA.
   */
   @Test public void averageSATest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should not be zero",
         18.84955592153, sc2.averageSurfaceArea(), 0.000001);
   }
   /**
   *Method to test a null amount of spherocylinders regarding
   *average volume.
   */
   @Test public void zeroAverageVTest() {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      Assert.assertEquals("Should be zero",
         0.0, sc.averageVolume(), 0.000001);
   }
   /**
   *Method to test a definate amount of spherocylinders regarding
   *average volume.
   */
   @Test public void averageVTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should not be zero",
         7.33038285837, sc2.averageVolume(), 0.000001);
   }
   /**
   *Method to test to string.
   */
   @Test public void toStringTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      String test = sc2.toString();
      char c = test.charAt(0);
      Assert.assertEquals("Should be t",
         't', c);
   }
   /**
   *Method to test summary info.
   */
   @Test public void summaryInfoTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      String test = sc2.summaryInfo();
      char c = test.charAt(0);
      Assert.assertEquals("Should be -",
         '-', c);
   }
   /**
   *Method test get the array list.
   */
   @Test public void getArrayTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Spherocylinder[] list2 = sc2.getList();
      String label = list[0].getLabel();
      Assert.assertEquals("Should be label", "label", label);
   }
   /**
   *Method to test a zero amount of spherocylinders regarding
   *the read file method.
   *@throws FileNotFoundException for readFile
   */
   @Test public void readFileTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      Assert.assertEquals("Should contain zero elements",
         0, sc.numberOfSpherocylinders());
   }
   /**
   *Method to test adding a spherocylinder regarding
   *the read file method.
   *@throws FileNotFoundException for readFile
   */
   @Test public void addSpherocylinderTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      sc.addSpherocylinder("test", 1, 1);
      Assert.assertEquals("Should contain one element",
         1, sc.numberOfSpherocylinders());
   }
   /**
   *Method to test deleteing a spherocylinder regarding
   *the read file method.
   *@throws FileNotFoundException for readFile
   */
   @Test public void deleteSpherocylinderTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.deleteSpherocylinder("small example");
      Assert.assertEquals("Should contain 2 elements",
         2, sc.numberOfSpherocylinders());
   }
   /**
   *Method to test deleteing a spherocylinder regarding
   *the read file method that does not exist.
   *@throws FileNotFoundException for readFile
   */
   @Test public void deleteNullSpherocylinderTest() 
      throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.deleteSpherocylinder("test");
      Assert.assertEquals("Should contain 3 elements",
         3, sc.numberOfSpherocylinders());
   }


   /**
   *Method to test finding a spherocylinder.
   */
   @Test public void findSpherocylinderTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Spherocylinder sc3 = sc2.findSpherocylinder("label");
      Assert.assertEquals("Should be 1", 1.0, sc3.getRadius(), 0.000001);
   }
   /**
   *Method to test finding a spherocylinder.
   */
   @Test public void findNullSpherocylinderTest() {
      Spherocylinder sc = new Spherocylinder("label2", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should be null", null,
         sc2.findSpherocylinder("label"));
   }
   /**
   *Method to test editing a spherocylinder.
   */
   @Test public void editSpherocylinderTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should be true", true,
         sc2.editSpherocylinder("label", 2, 2));
   }
   /**
   *Method to test editing a spherocylinder thats not found.
   */
   @Test public void editFalseSpherocylinderTest() {
      Spherocylinder sc = new Spherocylinder("label", 1, 1);
      Spherocylinder[] list = {sc};
      SpherocylinderList2 sc2 = new SpherocylinderList2("test", list, 1);
      Assert.assertEquals("Should be false", false,
         sc2.editSpherocylinder("doesn't exist",
         2, 2));
   }
   /**
   *Method to find the sc with the shortest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void shortestRadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithShortestRadius();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the small example",
         "Small Example", label);
   }
   /**
   *Method to find the sc with the shortest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void shortestSingleRadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.editSpherocylinder("large example", 0.000003, 0.000003);
      Spherocylinder sc2 = sc.findSpherocylinderWithShortestRadius();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the large example",
         "Large Example", label);
   }
   /**
   *Method to find the sc with the largest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largestRadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithLongestRadius();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the large example",
         "Large Example", label);
   }
   /**
   *Method to find the sc with the largest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largestSingleRadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.editSpherocylinder("small example", 100, 100);
      Spherocylinder sc2 = sc.findSpherocylinderWithLongestRadius();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the small example",
         "Small Example", label);
   }

   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void smallestVolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithSmallestVolume();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the small example",
         "Small Example", label);
   }
   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void smallestSingleVolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.editSpherocylinder("large example", 0.00003, 0.000003);
      Spherocylinder sc2 = sc.findSpherocylinderWithSmallestVolume();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the large example",
         "Large Example", label);
   }

   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largestVolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithLargestVolume();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the Large example",
         "Large Example", label);
   }
   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largestSingleVolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_1.txt");
      sc.deleteSpherocylinder("large example");
      sc.editSpherocylinder("Medium example", 0.0002, 0.00002);
      Spherocylinder sc2 = sc.findSpherocylinderWithLargestVolume();
      String label = sc2.getLabel();
      Assert.assertEquals("Should be the small example",
         "Small Example", label);
   }

   /**
   *Method to find the sc with the shortest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void shortest0RadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithShortestRadius();
      Assert.assertEquals("Should be null",
         null, sc2);
   }
   /**
   *Method to find the sc with the largest radius.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largest0RadiusTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithLongestRadius();
      Assert.assertEquals("Should be null",
         null, sc2);
   }
   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void smallest0VolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithSmallestVolume();
      Assert.assertEquals("Should be null",
         null, sc2);
   }
   /**
   *Method to find the sc with the smallest volume.
   *@throws FileNotFoundException for readFile
   */
   @Test public void largest0VolumeTest() throws FileNotFoundException {
      SpherocylinderList2 sc = new SpherocylinderList2("test", null, 0);
      sc = sc.readFile("spherocylinder_data_0.txt");
      Spherocylinder sc2 = sc.findSpherocylinderWithLargestVolume();
      
      Assert.assertEquals("Should be the null",
         null, sc2);
   }


}
