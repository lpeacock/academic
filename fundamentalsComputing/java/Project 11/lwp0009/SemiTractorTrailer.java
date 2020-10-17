 /**
*Class Truck that is dervived from Truck.
*Project 09
*@author Lucas Peacock
*@version 16 November 2017
*/
public class SemiTractorTrailer extends Truck {
   protected int axles;
   /**
   *Constant for PER_AXLE_TAX_RATE.
   */
   public static final  double PER_AXLE_TAX_RATE = 0.005;
   /**
   *Construtor.
   *@param nameIn to equal name
   *@param infoIn to equal yearMakeModel
   *@param valueIn to equal value
   *@param altFuelIn to equal altFuel
   *@param weightIn to equal weight
   *@param axlesIn to equal axles
   *@throws NegativeValueException for neg values
   */

   public SemiTractorTrailer(String nameIn, String infoIn,
      double valueIn, boolean altFuelIn, double weightIn, int axlesIn) 
         throws NegativeValueException {
      super(nameIn, infoIn, valueIn, altFuelIn, weightIn);
      if (axlesIn < 0) {
         throw new NegativeValueException();
      }
      axles = axlesIn;
      //--vehicleCount;
   }
   /**
   *Method to get axles.
   *@return is of type int
   */
   public int getAxles() {
      return axles;
   }
   /**
   *Method to set the amount of axles.
   *@param axlesIn to equal axles
   */
   public void setAxles(int axlesIn) {
      axles = axlesIn;
   }
   /**
   *Method to calculate tax.
   *@return is of type double
   */
   public double useTax() {
      return super.useTax() + (value * PER_AXLE_TAX_RATE * axles);
   }
   /**
   *Method to convert instance to a string.
   *@return output is of object string
   */
   public String toString() {
      String output = super.toString();
      output += " Axle Tax Rate: " + PER_AXLE_TAX_RATE * axles;
      return output;
   }

}