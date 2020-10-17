/**
*Class named ElectronicsItem.
*Activity 09
*@author Lucas Peacock
*@version 13 November 2017
*/
public class ElectronicsItem extends InventoryItem {

   protected double weight;
   /**
   *Flat Shipping cost.
   */
   public static final double SHIPPING_COST = 1.5;
   /**
   *Constructor.
   *@param nameIn to equal name
   *@param priceIn to equal price
   *@param weightIn to equal weight
   */
   public ElectronicsItem(String nameIn, double priceIn, double weightIn) {
      super(nameIn, priceIn);
      weight = weightIn;
   }
   /**
   *Method to calculate the shipping cost.
   *@return is the new cost.
   */
   public double calculateCost() {
      return super.calculateCost() + (SHIPPING_COST * weight);
   }
}