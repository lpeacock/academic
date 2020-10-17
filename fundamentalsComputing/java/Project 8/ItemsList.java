/**
*Class that manipulates an array named ItemsList.
*Activity 10
*@author Lucas Peacock
*@version 27 November 2017
*/
public class ItemsList {
   private InventoryItem[] inventory;
   private int count;
   /**
   *Constructor.
   */
   public ItemsList() {
      inventory = new InventoryItem[20];
      count = 0;
   }
   /**
   *Method to add an item.
   *@param itemIn to equal a slot in the array.
   */
   public void addItem(InventoryItem itemIn) {
      inventory[count] = itemIn;
      count++;
   }
   /**
   *Method to calculate cost.
   *@param electronicsSurcharge is the amount of surcharge
   *@return total is a double
   */
   public double calculateTotal(double electronicsSurcharge) {
      double total = 0;
      for (int i = 0; i < count; i++) {
         if (inventory[i] instanceof ElectronicsItem) {
            total += inventory[i].calculateCost() + electronicsSurcharge;
         }
         else {
            total += inventory[i].calculateCost();
         }
      }
      return total;
   }
   /**
   *Method to convert an instance to a string.
   *@return output is a string
   */
   public String toString() {
      String output = "All inventory:\n\n";
   
      for (int i = 0; i < count; i++) {
         output += inventory[i] + "\n";
      }
      return output;
   }
}