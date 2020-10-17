import java.util.ArrayList;
import java.text.DecimalFormat;
import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;

/**
*Class that stores the name of the list and
*an ArrayList of Spherocylinder objects.
*Project 06
*@author Lucas Peacock
*@version 20 October 2017
*/
public class SpherocylinderList {
//instance variables
   private String listName = "";
   private ArrayList<Spherocylinder> list;
    /**
   *Constructor for SpherocylinderList.
   *@param listNameIn assigned to listName
   *@param listIn assignted to ArrayList list
   */
   public SpherocylinderList(String listNameIn, 
      ArrayList<Spherocylinder> listIn) {
      listName = listNameIn;
      list = listIn;
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
      if (list.size() > 0) {
         int size = list.size();
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
            Spherocylinder sc = list.get(index);
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
            Spherocylinder sc = list.get(index);
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
         Spherocylinder sc = list.get(index);
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
   public ArrayList<Spherocylinder> getList() {
      return list; 
   }
   /**
   *Method to read a file, store a list name, and create a Spherocylinder list.
   *@return myScList list of Spherocylinders
   *@throws FileNotFoundException to read in file
   *@param fileIn equals file user wants to read
   */
   public SpherocylinderList readFile(String fileIn) 
            throws FileNotFoundException {
      ArrayList<Spherocylinder> myList = new ArrayList<Spherocylinder>();
   
      Scanner fileInput = new Scanner(new File(fileIn));
   
      String scListName = fileInput.nextLine();
      
      while (fileInput.hasNext()) {
         String scLabel = fileInput.nextLine();
         double scRadius = fileInput.nextDouble();
         double scHeight = fileInput.nextDouble();
         
         Spherocylinder sc = new Spherocylinder(scLabel, scRadius, scHeight);
         myList.add(sc);
         fileInput.nextLine();
      }
      fileInput.close();
      
      SpherocylinderList myScList = new SpherocylinderList(scListName, myList);
   
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
      list.add(sc);
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
         labelTest = list.get(index);
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
         labelTest = list.get(index);
         String label = labelTest.getLabel();
         found = label.equalsIgnoreCase(labelIn);
         index++;
      }
      if (found) {
         list.remove(index - 1);
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
         labelTest = list.get(index);
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
}