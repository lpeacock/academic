 /**
*Class Truck that is dervived from Vehicle.
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/

public class Truck extends Vehicle {
   protected double weight;
  /**
  *Constant for TAX_RATE.
  */
   public static final double TAX_RATE = 0.02;
  /**
  *Constant for ALTERNATIVE_FUEL_TAX_RATE.
  */
   public static final double ALTERNATIVE_FUEL_TAX_RATE = 0.01;
  /**
  *Constant for LARGE_TRUCK_TONS_THRESHOLD.
  */
   public static final double LARGE_TRUCK_TONS_THRESHOLD = 2.0;
  /**
  *Constant for LARGE_TRUCK_TAX_RATE.
  */
   public static final double LARGE_TRUCK_TAX_RATE = 0.03;
   /**
   *Construtor.
   *@param nameIn to equal name
   *@param yearMakeModelIn to equal yearMakeModel
   *@param valueIn to equal value
   *@param altFuelIn to equal altFuel
   *@param weightIn to equal weight
   *@throws NegativeValueException for neg values
   */
   public Truck(String nameIn, String yearMakeModelIn, 
      double valueIn, boolean altFuelIn, double weightIn)
         throws NegativeValueException {
      super(nameIn, yearMakeModelIn, valueIn, altFuelIn);
      if (weightIn < 0) {
         vehicleCount--;
         throw new NegativeValueException();
      }
      weight = weightIn;
     
   }
   /**
   *Method to getTons.
   *@return weight is of type double.
   */
   public double getTons() {
      return weight;
   }
   /**
   *Method to set tons.
   *@param weightIn to equal weight
   */
   public void setTons(double weightIn) {
      weight = weightIn;
   }
   /**
   *Method to caluclate tax.
   *@return is of type double
   */
   public double useTax() {
      if (altFuel) {
         if (weight > LARGE_TRUCK_TONS_THRESHOLD) {
            return value * ALTERNATIVE_FUEL_TAX_RATE
               + LARGE_TRUCK_TAX_RATE * value;
         }
         else {
            return value * ALTERNATIVE_FUEL_TAX_RATE;
         }
      }
      else {
         if (weight > LARGE_TRUCK_TONS_THRESHOLD) {
            return value * TAX_RATE + LARGE_TRUCK_TAX_RATE * value;
         }
         else {
            return value * TAX_RATE;
         }
      } 
   }
   /**
   *Method to convert instance to string.
   *@return is of object string.
   */
   public String toString() {
      String output = super.toString();
      output += "\nwith Tax Rate: ";
      if (altFuel) {
         if (weight > LARGE_TRUCK_TONS_THRESHOLD) {
            output += ALTERNATIVE_FUEL_TAX_RATE + " Large Truck Tax Rate: "
               + LARGE_TRUCK_TAX_RATE;
            return output;
         }
         else {
            output += ALTERNATIVE_FUEL_TAX_RATE;
            return output;
         }
      }
      else {
         if (weight > LARGE_TRUCK_TONS_THRESHOLD) {
            output += TAX_RATE
               + " Large Truck Tax Rate: " + LARGE_TRUCK_TAX_RATE;
            return output;
         }
         else {
            output += TAX_RATE;
            return output;
         }
      }  
   }
}

   
   
  
