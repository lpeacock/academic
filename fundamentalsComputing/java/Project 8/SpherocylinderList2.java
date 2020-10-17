import java.text.DecimalFormat;
import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

/**
*Class that stores the name of the list and
*an array of Spherocylinder objects.
*Project 08
*@author Lucas Peacock
*@version 10 November  2017
*/
public class SpherocylinderList2 {
//instance variables
   private String listName = "";
   private Spherocylinder[] list;
   private int arrayLength;
    /**
   *Constructor for SpherocylinderList.
   *@param listNameIn assigned to listName
   *@param listIn assignted to array list
   *@param arrayLengthIn to equal the array length
   */
   public SpherocylinderList2(String listNameIn, 
      Spherocylinder[] listIn, int arrayLengthIn) {
      listName = listNameIn;
      list = listIn;
      arrayLength = arrayLengthIn;
   }
   /**
   *Method to return the list name.
   *@return listName returns the name
   */
   public String getName() {
      return listName;
   }
   /**
   *Method to return the number of Spherocylinders in the list.
   *@return size of List
   */
   public int numberOfSpherocylinders() {
      if (arrayLength > 0) {
         int size = arrayLength;
         return size;
      }
      else {
         return 0;
      }
   }
   /**
   *Method to return the caluclated value for Total surface area.
   *@return surfaceArea equal total surface area
   */
   public double totalSurfaceArea() {
      if (numberOfSpherocylinders() == 0) {
         return 0;
      }
      else {
         int index = 0;
         double surfaceArea = 0;
         while (index < numberOfSpherocylinders()) {
            Spherocylinder sc = list[index];
            surfaceArea += sc.surfaceArea();
            index++;
         }
         return surfaceArea;
      }
   }
   /**
   *Method to return the calculated value for the Total volume.
   *@return volume equal total volume
   */
   public double totalVolume() {
      if (numberOfSpherocylinders() == 0) {
         return 0;
      }
      else {
         int index = 0;
         double volume = 0;
         while (index < numberOfSpherocylinders()) {
            Spherocylinder sc = list[index];
            volume += sc.volume();
            index++;
         }
         return volume;
      }
   }
   /**
   *Method to return the calculated value for the average 
   surface area.
   *@return averageSA equals average surface area
   */
   public double averageSurfaceArea() {
      if (numberOfSpherocylinders() == 0) {
         return 0;
      }
      else {
         double averageSA =
            totalSurfaceArea() / numberOfSpherocylinders();
       
         return averageSA;
      }
   }
   /**
   *Method to return the calculated value for average volume.
   *@return averageVolume equal average volume
   */
   public double averageVolume() {
      if (numberOfSpherocylinders() == 0) {
         return 0;
      }
      else {
         double averageVolume = totalVolume() / numberOfSpherocylinders();
         return averageVolume;
      }
   }
   /**
   *Method to create a string of the List.
   *@return ouput is a string
   */
   public String toString() {
      String output = listName + "\n";
      int index = 0;
      while (index < numberOfSpherocylinders()) {
         Spherocylinder sc = list[index];
         output += "\n" + sc.toString() + "\n";
         index++;
      }
      return output;
   }
   /**
   *Method to print the summary of calculated values.
   *@return output is a string
   */
   public String summaryInfo() {
      DecimalFormat df = new DecimalFormat("#,##0.0##");
      String output = "----- Summary for " + listName + " -----";
      output += "\nNumber of Spherocylinders: " + numberOfSpherocylinders();
      output += "\nTotal Surface Area: " + df.format(totalSurfaceArea());
      output += "\nTotal Volume: " + df.format(totalVolume());
      output += "\nAverage Surface Area: " + df.format(averageSurfaceArea());
      output += "\nAverage Volume: " + df.format(averageVolume());
      return output;
   };
   /**
   *Method to return the list of Spherocylinders.
   *@return ArrayList of Spherocylinders
   */
   public Spherocylinder[] getList() {
      return list; 
   }
   /**
   *Method to read a file, store a list name, and create a Spherocylinder list.
   *@return myScList list of Spherocylinders
   *@throws FileNotFoundException to read in file
   *@param fileIn equals file user wants to read
   */
   public SpherocylinderList2 readFile(String fileIn) 
            throws FileNotFoundException {
      Spherocylinder[] myList = new Spherocylinder[100];
   
      Scanner fileInput = new Scanner(new File(fileIn));
   
      String scListName = fileInput.nextLine();
      
      int i = 0;
      
      while (fileInput.hasNext()) {
         String scLabel = fileInput.nextLine();
         double scRadius = fileInput.nextDouble();
         double scHeight = fileInput.nextDouble();
         
         Spherocylinder sc = new Spherocylinder(scLabel, scRadius, scHeight);
         myList[i] = sc;
         fileInput.nextLine();
         i++;
      }
      fileInput.close();
      
      int arrayLengthIn = i;
      
      SpherocylinderList2 myScList = new
            SpherocylinderList2(scListName, myList, arrayLengthIn);
   
      return myScList;
   }
   /**
   *Method to add a Spherocylinder to the scList.
   *@param labelIn equals label
   *@param radiusIn equals radius
   *@param heightIn equals height
   */
   public void addSpherocylinder(
      String labelIn, double radiusIn, double heightIn) {
      Spherocylinder sc = new Spherocylinder(labelIn, radiusIn, heightIn);
      list[arrayLength] = sc;
      arrayLength++;
   }
   /**
   *Method to a find a certain Spherocylinder in the scList.
   *@param labelIn to search for that spherocylinder
   @return labelTest is the found Spherocylinder
   */
   public Spherocylinder findSpherocylinder(String labelIn) {
      int index = 0;
      boolean found = false;
      Spherocylinder labelTest = null;
      while (!found && index < numberOfSpherocylinders()) {
         labelTest = list[index];
         String label = labelTest.getLabel();
         found = label.equalsIgnoreCase(labelIn);
         index++;
      }
      if (found) {
         return labelTest;
      }
      else {
         return null;
      }
   }
   /**
   *Method to delete a spherocylinder from the scList.
   *@param labelIn to search for that spherocylinder
   *@return found true if found; false if not found
   */
   public Spherocylinder deleteSpherocylinder(String labelIn) {
      int index = 0;
      boolean found = false;
      Spherocylinder labelTest = null;
      while (!found && index < numberOfSpherocylinders()) {
         labelTest = list[index];
         String label = labelTest.getLabel();
         found = label.equalsIgnoreCase(labelIn);
         index++;
      }
      if (found) {
         index--;
         list[index] = null;
         for (int difference  = arrayLength - index;
             difference >= 0; difference--) {
            list[index] = list[index + 1];
            index++;
         }
         arrayLength--;
         
         return labelTest;
      }
      else {
         return null;
      }
   }
   /**
   *Method to edit the spherocylinder of user's choice.
   *@param labelIn to search for that spherocylinder
   *@param radiusIn to set to new radius
   *@param heightIn to set to new height
   *@return found true if found; false if not found
   */
   public boolean editSpherocylinder(
      String labelIn, double radiusIn, double heightIn) {
      int index = 0;
      boolean found = false;
      Spherocylinder labelTest = null;
      while (!found && index < numberOfSpherocylinders()) {
         labelTest = list[index];
         String label = labelTest.getLabel();
         found = labelIn.equalsIgnoreCase(label);
         index++;
      }
      if (found) {
         labelTest.setRadius(radiusIn);
         labelTest.setCylinderHeight(heightIn);
         return found;
      }
      else {
         return found;
      }
   }
  /**
   *Method to return the sc with the smallest radius.
   *@return sc is a spherocylinder.
   */
 
   public Spherocylinder findSpherocylinderWithShortestRadius() {
      if (arrayLength != 0) {
         double radius = list[0].getRadius();
         Spherocylinder sc = list[0];
         for (int i = 1; i < arrayLength; i++) {
            Spherocylinder test = list[i];
            double radius2 = test.getRadius();
            if (radius2 < radius) {
               sc = list[i];
               
            }
            else {
               continue;
            }
         
         }
         return sc;
      }
      else {
         return null;
      }
   }
   /**
   *Method to return the sc with the largest radius.
   *@return sc is a spherocylinder.
   */

   public Spherocylinder findSpherocylinderWithLongestRadius() {
      if (arrayLength != 0) {
         double radius = list[0].getRadius();
         Spherocylinder sc = list[0];
         for (int i = 1; i < arrayLength; i++) {
            Spherocylinder test = list[i];
            double radius2 = test.getRadius();
            if (radius2 > radius) {
               sc = list[i];
               
            }
            else {
               continue;
            }
         
         }
         return sc;
      
      }
      else {
         return null;
      }
   
   }
   /**
   *Method to return the sc with the smallest volume.
   *@return sc is a spherocylinder.
   */

   public Spherocylinder findSpherocylinderWithSmallestVolume() {
      if (arrayLength != 0) {
         double volume = list[0].volume();
         Spherocylinder sc = list[0];
         for (int i = 1; i < arrayLength; i++) {
            Spherocylinder test = list[i];
            double volume2 = test.volume();
            if (volume2 < volume) {
               sc = list[i];
               
            }
            else {
               continue;
            }
         
         }
         return sc;
      
      }
      else {
         return null;
      }
   }
   /**
   *Method to return the sc with the largest volume.
   *@return sc is a spherocylinder.
   */
   public Spherocylinder findSpherocylinderWithLargestVolume() {
      if (arrayLength != 0) {
         double volume = list[0].volume();
         Spherocylinder sc = list[0];
         for (int i = 1; i < arrayLength; i++) {
            Spherocylinder test = list[i];
            double volume2 = test.volume();
            if (volume2 > volume) {
               sc = list[i];
               
            }
            else {
               continue;
            }
         
         }
         return sc;
      
      }
      else {
         return null;
      }
   }
   
}