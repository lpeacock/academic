import java.util.Scanner;
/**
*Program to evaluate attributes of a Spherocylinder.
*Project 04
*@author Lucas Peacock
*@version 29 September 2017
*/
public class SpherocylinderApp {
/**
*Method to interact with user input.
*@param args Not Used
*/
   public static void main(String [] args) {
      Scanner userInput = new Scanner(System.in);
      System.out.println("Enter label, radius, and" 
         + " cylinder height for a spherocylinder.");
      System.out.print("\tlabel: ");
      String label = userInput.nextLine();
      System.out.print("\tradius: ");
      double radius = Double.parseDouble(userInput.nextLine());
      if (radius < 0) {
         System.out.println("Error: radius must be non-negative.");
         return;
      }
   
      System.out.print("\tcylinder height: ");
      double height = Double.parseDouble(userInput.nextLine());
      if (height < 0) {
         System.out.println("Error: cylinder height must be non-negative.");
         return;
      }
      Spherocylinder obj = new Spherocylinder("", 0, 0);
      obj.setLabel(label);
      obj.setRadius(radius);
      obj.setCylinderHeight(height);
      System.out.println("\n" + obj.toString());
      
   }
}