import java.util.Scanner;
import java.io.FileNotFoundException;
/**
*Program to create a menu to manipulate a Spherocylinder List using array's.
*Project 07
*@author Lucas Peacock
*@version 26 October 2017
*/
public class SpherocylinderList2MenuApp {
   /**
   *Main method to generate the menu options and call the methods on scList.
   *@param args Not Used
   *@throws FileNotFoundException for readFile() method
   */
   public static void main(String[] args) throws FileNotFoundException {
      String title = ("*** no list name assigned ***");
      Spherocylinder[] list = new Spherocylinder[100];
      int elementNumber = 0;
      SpherocylinderList2 scList = new SpherocylinderList2(title,
            list, elementNumber);
      Scanner userInput = new Scanner(System.in);
      String input = "";
      
      
      System.out.println("Spherocylinder List System Menu\n"
                       + "R - Read File and Create Spherocylinder List\n"
                       + "P - Print Spherocylinder List \n" 
                       + "S - Print Summary\n"
                       + "A - Add Spherocylinder\n"
                       + "D - Delete Spherocylinder\n"
                       + "F - Find Spherocylinder\n"
                       + "E - Edit Spherocylinder\n"
                       + "Q - Quit");
                       
                       
      do {
         System.out.print("Enter Code [R, P, S, A, D, F, E, or Q]: ");
         input = userInput.nextLine();
         if (input.length() == 0) {
            continue;
         }
         input = input.toUpperCase();
         char selection = input.charAt(0);
         
         switch(selection) {
         
            case 'R':
               System.out.print("\tFile name: ");
               String fileIn = userInput.nextLine();
               scList = scList.readFile(fileIn);
               System.out.println("\tFile read in and Spherocylinder List"
                  + " created\n");
               break;
               
            case 'P':
               System.out.println("\n" + scList);
               break;
               
            case 'S':
               System.out.println("\n" + scList.summaryInfo() + "\n");
               break;
               
            case 'A':
               System.out.print("\tLabel: ");
               String labelIn = userInput.nextLine();
               System.out.print("\tRadius: ");
               double radiusIn = userInput.nextDouble();
               System.out.print("\tCylinder Height: ");
               double heightIn = userInput.nextDouble();
               scList.addSpherocylinder(labelIn, radiusIn, heightIn);
               System.out.println("\t*** Spherocylinder added ***\n");
               userInput.nextLine();
               break;
               
            case 'D':
               System.out.print("\tLabel: ");
               labelIn = userInput.nextLine();
               Spherocylinder test = scList.deleteSpherocylinder(labelIn);
               if (test == null) {
                  System.out.println("\t\"" + labelIn + "\" not found\n");
               }
               else {
                  System.out.println("\t\"" + labelIn + "\" deleted\n");
               }
               break;
               
            case 'F':
               System.out.print("\tLabel: ");
               labelIn = userInput.nextLine();
               test = scList.findSpherocylinder(labelIn);
               if (test == null) {
                  System.out.println("\t\"" + labelIn + "\" not found\n");
               }
               else {
                  System.out.println(test + "\n");
               }
               break;
               
            
            case 'E':
               System.out.print("\tLabel: ");
               labelIn = userInput.nextLine();
               System.out.print("\tRadius: ");
               radiusIn = userInput.nextDouble();
               System.out.print("\tCylinder Height: ");
               heightIn = userInput.nextDouble();
               boolean done = 
                     scList.editSpherocylinder(labelIn, radiusIn, heightIn);
               if (done) {
                  System.out.println("\t\"" + labelIn
                      + "\" successfully edited\n");
                  
               }
               else {
                  System.out.println("\t\"" + labelIn + "\" not found\n");
                  
               }
               userInput.nextLine();
               break;
               
            case 'Q':
               break;
               
            default:
               System.out.println("\t*** invalid code ***");
               break;
         }
      } while (!input.equalsIgnoreCase("Q"));
      
      
      
      
   
   }
}