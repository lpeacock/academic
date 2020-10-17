/**
*Class named OnlineTextItem.
*Activity 09
*@author Lucas Peacock
*@version 13 November 2017
*/
public abstract class OnlineTextItem extends InventoryItem {
/**
*Constructor.
*@param nameIn to equal name.
*@param priceIn to equal price.
*/
   public OnlineTextItem(String nameIn, double priceIn) {
      super(nameIn, priceIn);
   }
   /**
   *Method to override calculatecost.
   *@return price is the new price
   */
   public double calculateCost() {
      return price;
   }
}