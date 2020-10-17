/**
*Customer is used to represent a customer.
*Activity 08B
*@author Lucas Peacock
*@version 6 November 2017
*/
public class Customer implements Comparable<Customer> {
   private String name;
   private String location;
   private double balance;
   /**
   *Constructor for Customer.
   *@param nameIn to equal name
   */
   public Customer(String nameIn) {
      name = nameIn;
      location = "";
      balance = 0.0;
   }
   /**
   *Method to set a new locataion in one param.
   *@param locationIn to equal location
   */
   public void setLocation(String locationIn) {
      location = locationIn;
   }
   /**
   *Method to set locaiton with two params.
   *@param city to be first part of string
   *@param state to end string
   */
   public void setLocation(String city, String state) {
      location = city + ", " + state;
   }
   /**
   *Method to change the balance of the customer.
   @param amount to be added to balance
   */
   public void changeBalance(double amount) {
      balance += amount;
   }
   /**
   *Method to get location.
   *@return is string location
   */
   public String getLocation() {
      return location;
   }
   /**
   *Method to get balance.
   *@return balance is a double
   */
   public double getBalance() {
      return balance;
   }
   /**
   *Method to convert obj to a string.
   *@return is a string
   */
   public String toString() {
      String output = name + "\n" + location + "\n$" + balance;
      return output;
   }
   /**
   *Method to compare two instances of customer.
   *@param obj is an instance of Customer
   *@return is a value of (-1,0, or 1)
   */
   public int compareTo(Customer obj) {
      if (Math.abs(this.balance - obj.getBalance()) < 0.000001) {
         return 0;
      }
      else if (this.balance < obj.getBalance()) {
         return -1;
      }
      else {
         return 1;
      }
   }
}