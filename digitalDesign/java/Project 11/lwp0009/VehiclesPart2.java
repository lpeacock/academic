import java.io.FileNotFoundException;
/**
*This class contains the main method.
*Project 10
*@author Lucas Peacock
*@version 1 December 2017
*/
public class VehiclesPart2 {
   /**
   *Main method.
   *@param args are used.
   *@throws FileNotFoundException for reading file.
   */
   public static void main(String[] args) throws FileNotFoundException {
      String fileIn = args[0];
      UseTaxList t = new UseTaxList();
      t.readVehicleFile(fileIn); 
      System.out.println(t.summary());
      System.out.println("\n" + t.listByOwner());
      System.out.println("\n" + t.listByUseTax());
      System.out.println("\n" + t.excludedRecordsList());
   }

}