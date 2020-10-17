import java.io.FileNotFoundException;
import java.util.Scanner;
import java.io.File;
import java.util.Arrays;
import java.text.DecimalFormat;
import java.util.NoSuchElementException;
/**
*This class defines Use Tax options.
*Project 10
*@author Lucas Peacock
*@version 1 December 2017
*/

public class UseTaxList {
   private String taxDistrict = "not yet assigned";
   private Vehicle[] vehicleList = new Vehicle[0];
   private String[] excludedRecords = new String[0];
   /**
   *Constructor.
   */
   public UseTaxList() {
   
   }
   /**
   *Method to read in a file.
   *@param fileIn is file in
   *@throws FileNotFoundException for read method.
   */
   public void readVehicleFile(String fileIn) throws FileNotFoundException {
      
      Scanner fileInput = new Scanner(new File(fileIn));
      
      
      taxDistrict = fileInput.nextLine();
      while (fileInput.hasNext()) {
         String test = fileInput.nextLine();
         Scanner lineInput = new Scanner(test);
         lineInput.useDelimiter(";");
         /*
         *Looking for numberFormatException.
         */
      
         
         
         while (lineInput.hasNext()) {
            try {
            
               String type = lineInput.next().trim();
               String name = lineInput.next().trim();
               String info = lineInput.next().trim();
                           
               Double price = Double.parseDouble(lineInput.next().trim());
            
                           
               Boolean altFuel = Boolean.parseBoolean(lineInput.next().trim());
               Double sizeOrWeight = 0.0;
               int axles = 0;
               if (lineInput.hasNext()) {
                  sizeOrWeight = Double.parseDouble(lineInput.next().trim());
               }
               if (lineInput.hasNext()) {
                  axles = Integer.parseInt(lineInput.next().trim());
               }
               switch (type.toLowerCase().charAt(0)) {
                  case 'c':
                     Car car = new Car(name, info, price, altFuel);
                     addVehicle(car);
                     break;
                  case 'm':
                     Motorcycle cycle = new Motorcycle(name,
                        info, price, altFuel, sizeOrWeight);
                     addVehicle(cycle);
                     break;
                  case 's':
                     SemiTractorTrailer tractor = new SemiTractorTrailer(name,
                        info, price, altFuel, sizeOrWeight, axles);
                     addVehicle(tractor);
                     break;
                  case 't':
                     Truck truck = new Truck(name,
                        info, price, altFuel, sizeOrWeight);
                     addVehicle(truck);
                     break;
                  default:
                     addExcludedRecord("Invalid Vehicle Category in:\n" + test);
                     break;
               
               
               }
            }
            catch (NumberFormatException e) {
               addExcludedRecord(e + " in:\n" + test);
               Vehicle.vehicleCount--;
            }
            catch (NoSuchElementException e) {
               addExcludedRecord(e + " in:\n" + test);
               //Vehicle.vehicleCount--;
            
            }
            catch (NegativeValueException e) {
               addExcludedRecord(e + " in:\n" + test);
            
            }
         
               
            
         }
         
                  
      }
      
      
          
   }
   /**
   *Method to get tax district.
   *@return taxDistrict is a string.
   */
   public String getTaxDistrict() {
      return taxDistrict;
   }
   /**
   *Method to set tax district.
   *@param taxDistrictIn is a string
   */
   public void setTaxDistrict(String taxDistrictIn) {
      taxDistrict = taxDistrictIn;
   }
   /**
   *Method to get excluded records.
   *@return is a string array.
   */
   public String[] getExcludedRecords() {
      return excludedRecords;
   }
   /**
   *Method to add excluded records.
   *@param recordIn is a string
   */
   public void addExcludedRecord(String recordIn) {
      excludedRecords = Arrays.copyOf(excludedRecords,
         excludedRecords.length + 1);
      excludedRecords[excludedRecords.length - 1] = recordIn;
   }
   /**
   *Method to add a vehicle.
   *@param vehicleIn to be added to the array.
   */
   public void addVehicle(Vehicle vehicleIn) {
      vehicleList = Arrays.copyOf(vehicleList, vehicleList.length + 1);
      vehicleList[vehicleList.length - 1] = vehicleIn;
   }
   /**
   *Method to get vehicle List.
   *@return is a vehicle[]
   */
   public Vehicle[] getVehicleList() {
      return vehicleList;
   }
   /**
   *Method to convert instance of class to a string.
   *@return is a string.
   */
   public String toString() {
      String output = "";
      for (int i = 0; i < vehicleList.length; i++) {
         output += "\n" + vehicleList[i].toString() + "\n";
      }
      return output;
   }
   /**
   *Method to calculateTotalUseTax.
   *@return is of type double
   */
   public double calculateTotalUseTax() {
      double output = 0.0;
      for (int i = 0; i < vehicleList.length; i++) {
         output += vehicleList[i].useTax();
      }
      return output;
   }
   /**
   *Method to calculatetotalvalue.
   *@return is of type double
   */
   public double calculateTotalValue() {
      double output = 0.0;
      for (int i = 0; i < vehicleList.length; i++) {
         output += vehicleList[i].getValue();
      }
      return output;
   }
   /**
   *Method to create a summary.
   *@return is of type string.
   */
   public String summary() {
      DecimalFormat format = new DecimalFormat("$#,000.00");
      String output = "------------------------------\nSummary for "
         + getTaxDistrict() + "\n------------------------------\n";
      output += "Number of Vehicles: " + vehicleList.length + "\n";
      output += "Total Value: " + format.format(calculateTotalValue()) + "\n";
      output += "Total Use Tax: " + format.format(calculateTotalUseTax()) 
            + "\n";
      
   
      return output;
   }
   /**
   *Method to sort list by owner.
   *@return is of type string.
   */
   public String listByOwner() {
      Arrays.sort(vehicleList);
      String output = "------------------------------\n";
      output += "Vehicles by Owner\n";
      output += "------------------------------\n";
      output += toString();
      return output;
   }
   /**
   *Method to sort list by use tax.
   *@return is of type string.
   */
   public String listByUseTax() {
      Arrays.sort(vehicleList, new UseTaxComparator());        
      String output = "------------------------------\n";
      output += "Vehicles by Use Tax\n";
      output += "------------------------------\n";
      output += toString();
      return output;
   }
   /**
   *Method to create an excluded records list.
   *@return is of type string.
   */
   public String excludedRecordsList() {
      String output = "------------------------------\n";
      output += "Excluded Records\n";
      output += "------------------------------\n";
      for (int i = 0; i < excludedRecords.length; i++) {
         output += "\n" + excludedRecords[i] + "\n";
      }
      return output;
   }
}