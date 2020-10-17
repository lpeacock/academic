/**
*Class named OnlineArticle.
*Activity 09
*@author Lucas Peacock
*@version 13 November 2017
*/

public class OnlineArticle extends OnlineTextItem {
   private int wordCount;
   /**
   *Constructor.
   *@param nameIn to equal name
   *@param priceIn to equal price
   */
   public OnlineArticle(String nameIn, double priceIn) {
      super(nameIn, priceIn);
      wordCount = 0;
   }
   /**
   *Method  to set the word count.
   *@param wordCountIn to equal wordcount
   */
   public void setWordCount(int wordCountIn) {
      wordCount = wordCountIn;
   }
}