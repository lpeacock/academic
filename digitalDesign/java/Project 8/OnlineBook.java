/**
*Class named InventoryItem.
*Activity 09
*@author Lucas Peacock
*@version 13 November 2017
*/

public class OnlineBook extends OnlineTextItem {
   protected String author;
   /**
   *Constructor.
   *@param nameIn to equal name
   *@param priceIn to equal price
   */
   public OnlineBook(String nameIn, double priceIn) {
      super(nameIn, priceIn);
      author = "Author Not Listed";
   }
   /**
   *Method to convert instance of the class to a string.
   *@return is a string
   */
   public String toString() {
      return name + " - " + author + ": $" + price;
   }
   /**
   *Method to set the author.
   *@param authorIn to equal author
   */
   public void setAuthor(String authorIn) {
      author = authorIn;
   }
}