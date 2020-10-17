import java.io.FileNotFoundException;
/**
*This class contains the main method - prints vehicle info.
*Project 11.
*@author Lucas Peacock
*@version 6 December 2017
*/

public class VehiclesPart3 {
   /**
   *main method.
   *@param args not used
   */
   public static void main(String[] args) {
      
      if (args.length == 0) {
         System.out.println("*** File name not provided "
            + "by command line argument.");
         System.out.print("Program ending.");
      }
      else {
         try {
            String fileIn = args[0];
            UseTaxList t = new UseTaxList();
            t.readVehicleFile(fileIn); 
            System.out.println(t.summary());
            System.out.println("\n" + t.listByOwner());
            System.out.println("\n" + t.listByUseTax());
            System.out.println("\n" + t.excludedRecordsList());
         }
         catch (FileNotFoundException e) {
            System.out.println("*** File not found.\nProgram Ending.");
         
         }
      }
   }

}