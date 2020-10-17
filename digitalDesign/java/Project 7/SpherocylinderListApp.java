import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.ArrayList;

 /** 
 * SpherocylinderListApp - uses SpherocylinderList and Spherocylinder classes.
 *Project 05
 *@author Lucas Peacock
 *@version 11 October 2017
 */

public class SpherocylinderListApp {
   /**
   *Main method to print out the contents a file that includes 
   *details for Spherocylinders.
   *@param args - is not used.
   * @throws FileNotFoundException required by Scanner for File
   */
   public static void main(String[] args) throws FileNotFoundException {
      ArrayList<Spherocylinder> myList = new ArrayList<Spherocylinder>();
      
      Scanner scan = new Scanner(System.in);
      System.out.print("Enter file name: ");
      String fileName = scan.nextLine();
      
      Scanner fileInput = new Scanner(new File(fileName));
      
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
      System.out.println("\n" + myScList);
      System.out.println("\n" + myScList.summaryInfo());
   }
}