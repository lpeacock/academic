/**
*Class Motorcycle that is dervived from Vehicle.
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/

public class Motorcycle extends Vehicle {
   protected double engineSize;
  /**
  *Constant for TAX_RATE.
  */
   public static final double TAX_RATE = 0.005;
  /**
  *Constant for ALTERNATIVE_FUEL_TAX_RATE.
  */

   public static final double ALTERNATIVE_FUEL_TAX_RATE = 0.0025;
  /**
  *Constant for LARGE_BIKE_CC_THRESHOLD.
  */
 
   public static final double LARGE_BIKE_CC_THRESHOLD = 499;
  /**
  *Constant for LARGE_BIKE_TAX_RATE.
  */
  
   public static final double LARGE_BIKE_TAX_RATE = .015;
   /**
   *Construtor.
   *@param nameIn to equal name
   *@param infoIn to equal yearMakeModel
   *@param valueIn to equal value
   *@param altFuelIn to equal altFuel
   *@param engineSizeIn to equal engineSize
   *@throws NegativeValueException for neg values
   */

   public Motorcycle(String nameIn, String infoIn,
      double valueIn, boolean altFuelIn, double engineSizeIn)
          throws NegativeValueException {
      super(nameIn, infoIn, valueIn, altFuelIn);
      if (engineSizeIn < 0) {
         vehicleCount--;
         throw new NegativeValueException();
      }
      engineSize = engineSizeIn;
   }
    /**
    *Method to get engine size.
    *@return is of type double
    */ 
   public double getEngineSize() {
      return engineSize;
   }
   /**
   *Mehtod to set engine size.
   *@param engineSizeIn to equal engineSize
   */
   public void setEngineSize(double engineSizeIn) {
      engineSize = engineSizeIn;
   }
   /**
   *Method to calculate tax.
   *@return is of type double
   */
   public double useTax() {
      if (altFuel) {
         if (engineSize > LARGE_BIKE_CC_THRESHOLD) {
            return value * ALTERNATIVE_FUEL_TAX_RATE
               + LARGE_BIKE_TAX_RATE * value;
         }
         else {
            return value * ALTERNATIVE_FUEL_TAX_RATE;
         }
      }
      else {
         if (engineSize > LARGE_BIKE_CC_THRESHOLD) {
            return value * TAX_RATE + LARGE_BIKE_TAX_RATE * value;
         }
         else {
            return value * TAX_RATE;
         }
      } 
   }
   /**
   *Method to convert instance to a string.
   *@return is of object string
   */
   public String toString() {
      String output = super.toString();
      output += "\nwith Tax Rate: ";
      if (altFuel) {
         if (engineSize > LARGE_BIKE_CC_THRESHOLD) {
            output += ALTERNATIVE_FUEL_TAX_RATE
               + " Large Bike Tax Rate: " + LARGE_BIKE_TAX_RATE;
            return output;
         }
         else {
            output += ALTERNATIVE_FUEL_TAX_RATE;
            return output;
         }
      }
      else {
         if (engineSize > LARGE_BIKE_CC_THRESHOLD) {
            output += TAX_RATE + " Large Bike Tax Rate: " + LARGE_BIKE_TAX_RATE;
            return output;
         }
         else {
            output += TAX_RATE;
            return output;
         }
      }  
   }

}