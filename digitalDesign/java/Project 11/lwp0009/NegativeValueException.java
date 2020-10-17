/**
*Exception for negative values which are not usable.
*Project 11.
*@author Lucas Peacock
*@version 6 December 2017
*/
public class NegativeValueException extends Exception {
   /**
   *This method is the exception constructor.
   */
   public NegativeValueException() {
      super("Numeric values must be nonnegative");
   }
}