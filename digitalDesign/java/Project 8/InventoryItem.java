/**
*Class named InventoryItem.
*Activity 09
*@author Lucas Peacock
*@version 13 November 2017
*/
public class InventoryItem {
   protected String name;
   protected double price;
   private static double taxRate = 0;
   /**
   *Constuctor.
   *@param nameIn to equal name
   *@param priceIn to equal price
   */
   public InventoryItem(String nameIn, double priceIn) {
      name = nameIn;
      price = priceIn;
   }
   /**
   *Method to get name.
   *@return name is name
   */
   public String getName() {
      return name;
   }
   /**
   *Method to calculate the cost with tax.
   *@return is the new cost
   */
   public double calculateCost() {
      return price * (1 + taxRate);
   }
   /**
   *Method to set the tax rate.
   *@param taxRateIn to equal taxRate
   */
   public static void setTaxRate(double taxRateIn) {
      taxRate = taxRateIn;
   }
   /**
   *Method to convert instance to a string.
   *@return is a string.
   */
   public String toString() {
      return name + ": $" + calculateCost();
   }
}