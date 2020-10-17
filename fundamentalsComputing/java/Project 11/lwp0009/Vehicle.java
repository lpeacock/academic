import java.text.DecimalFormat;

/**
*Abstract vehicle class.
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/
public abstract class Vehicle implements Comparable<Vehicle> {
   protected String name;
   protected String yearMakeModel;
   protected double value;
   protected boolean altFuel;
   protected static int vehicleCount;
   /**
   *Constructor.
   *@param nameIn to equal name
   *@param yearMakeModelIn to equal yearMakeModel
   *@param valueIn to equal value
   *@param altFuelIn to equal altFuel
   *@throws NegativeValueException for neg values
   */
   public Vehicle(String nameIn, String yearMakeModelIn, double valueIn,
          boolean altFuelIn) throws NegativeValueException {
      name = nameIn;
      yearMakeModel = yearMakeModelIn;
      if (valueIn < 0) {
         throw new NegativeValueException();
      }
      value = valueIn;
      altFuel = altFuelIn;
      vehicleCount++;
   }
   /**
   *Method to get name.
   *@return name is a string
   */
   public String getOwner() {
      return name;
   }
   /**
   *Method to set name.
   *@param nameIn to equal name
   */
   public void setOwner(String nameIn) {
      name = nameIn;
   }
   /**
   *Method to get info.
   *@return yearMakeModel is a string
   */
   public String getYearMakeModel() {
      return yearMakeModel;
   }
   /**
   *Method to set info.
   *@param infoIn to equal yearMakeModel
   */
   public void setYearMakeModel(String infoIn) {
      yearMakeModel = infoIn;
   }
   /**
   *Method to get the value of the vehicle.
   *@return value is a double
   */
   public double getValue() {
      return value;
   }
   /**
   *Method to setValue.
   *@param valueIn to equal value
   */
   public void setValue(double valueIn) {
      value = valueIn;
   }
   /**
   *Method to check if the vehicle uses alt fuel.
   *@return altFuel is a boolean
   */
   public boolean getAlternativeFuel() {
      return altFuel;
   }
   /**
   *Method to set altFuel.
   *@param setIn to equal altFuel
   */
   public void setAlternativeFuel(boolean setIn) {
      altFuel = setIn;
   }
   /**
   *Method to get the vehicleCount.
   *@return vehicleCount is of type int
   */
   public static int getVehicleCount() {
      return vehicleCount;
   }
   /**
   *Method to reset the vehicle count.
   */
   public static void resetVehicleCount() {
      vehicleCount = 0;
   }
   /**
   *Abstract method for future use to calculate subclass tax.
   *@return will be of type double
   */
   public abstract double useTax();
   /**
   *Method to convert class instance to a string.
   *@return is of object String
   */
   public String toString() {
      
      DecimalFormat format = new DecimalFormat("$#,##0.00");
      String formatValue = format.format(value);
      String formatTax = format.format(useTax());
      
      if (altFuel) {
         return name + ": " + this.getClass().getName() + " " + yearMakeModel
            + " (Alternative Fuel)\nValue: "
            + formatValue + " Use Tax: " + formatTax; 
      }
      else {
         return name + ": " + this.getClass().getName() + " "  
            + yearMakeModel + "\nValue: " + formatValue
            + " Use Tax: " + formatTax; 
      }
   }
   /**
   *New compareTo method.
   *@return is an int
   *@param vehicleIn is of type vehcile
   */
   public int compareTo(Vehicle vehicleIn) {
      return name.toLowerCase()  
                 .compareTo(vehicleIn.getOwner().toLowerCase());
   }
   /**
* @param obj the other object
* @return boolean
*/
   public boolean equals(Object obj) {
      if (!(obj instanceof Vehicle)) {
         return false;
      }
      else {
         Vehicle other = (Vehicle) obj;
         return (name + yearMakeModel + value).
            equals(other.name + other.yearMakeModel + other.value);
      }
   }
/** @return 0 */
   public int hashCode() {
      return 0;
   }

}