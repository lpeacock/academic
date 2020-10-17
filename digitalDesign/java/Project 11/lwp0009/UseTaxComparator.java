import java.util.Comparator;
/**
*Comparator for use tax.
*Project 10
*@author Lucas Peacock
*@version 1 December 2017
*/

public class UseTaxComparator implements Comparator<Vehicle> {
   /**
   *Compare to method.
   *@return is a int.
   *@param v1 is a vehicle
   *@param v2 is a vehicle
   */
   public int compare(Vehicle v1, Vehicle v2) {
      if (v1.useTax() > v2.useTax()) {
         return 1;
      }
      else if (v1.useTax() < v2.useTax()) {
         return -1;
      }
      return 0;
   
      
   }

}