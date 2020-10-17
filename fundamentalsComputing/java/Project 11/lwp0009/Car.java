/**
*Class Car that is dervived from Vehicle.
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/
public class Car extends Vehicle {
  /**
  *Constant for TAX_RATE.
  */
   public static final double TAX_RATE = 0.01;
  /**
  *Constant for ALTERNATIVE_FUEL_TAX_RATE.
  */
   public static final double ALTERNATIVE_FUEL_TAX_RATE = 0.005;
  /**
  *Constant for LUXURY_THRESHOLD.
  */
   public static final double LUXURY_THRESHOLD = 50000;
  /**
  *Constant for LUXURY_TAX_RATE.
  */
   public static final double LUXURY_TAX_RATE = 0.02;
   /**
   *Construtor.
   *@param nameIn to equal name
   *@param yearMakeModelIn to equal yearMakeModel
   *@param valueIn to equal value
   *@param altFuelIn to equal altFuel
   *@throws NegativeValueException for neg values
   */
   public Car(String nameIn, String yearMakeModelIn, 
      double valueIn, boolean altFuelIn) throws NegativeValueException {
      super(nameIn, yearMakeModelIn, valueIn, altFuelIn);
   }
   /**
   *Method to calcualte tax.
   *@return value is of type double.
   */
   public double useTax() {
      if (altFuel) {
         if (value > LUXURY_THRESHOLD) {
            return value * ALTERNATIVE_FUEL_TAX_RATE + LUXURY_TAX_RATE * value;
         }
         else {
            return value * ALTERNATIVE_FUEL_TAX_RATE;
         }
      }
      else {
         if (value > LUXURY_THRESHOLD) {
            return value * TAX_RATE + LUXURY_TAX_RATE * value;
         }
         else {
            return value * TAX_RATE;
         }
      } 
   }
   /**
   *Method to convert instance to a string.
   *@return is of object String
   */
   public String toString() {
      String output = super.toString();
      output += "\nwith Tax Rate: ";
      if (altFuel) {
         if (value > LUXURY_THRESHOLD) {
            output += ALTERNATIVE_FUEL_TAX_RATE
               + " Luxury Tax Rate: " + LUXURY_TAX_RATE;
            return output;
         }
         else {
            output += ALTERNATIVE_FUEL_TAX_RATE;
            return output;
         }
      }
      else {
         if (value > LUXURY_THRESHOLD) {
            output += TAX_RATE + " Luxury Tax Rate: " + LUXURY_TAX_RATE;
            return output;
         }
         else {
            output += TAX_RATE;
            return output;
         }
      }  
   }
}