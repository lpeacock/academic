import java.text.DecimalFormat;

/**
*Class that allows the creation analysis of a spherocylinder.
*Project 07
*@author Lucas Peacock
*@version 26 October 2017
*/

public class Spherocylinder {
//instance variables
   private double radius = 0, height = 0;
   private String label = "";
 /**
 *Constructor of the class.
 *@param labelIn for the string "label"
 *@param radiusIn for the double "radius"
 *@param heightIn for the double "height"
 */
   public Spherocylinder(String labelIn, double radiusIn, double heightIn) {
      setLabel(labelIn);
      setRadius(radiusIn);
      setCylinderHeight(heightIn);        
   }
   /**
   *Method to access label string.
   *@return label to return label
   */
   public String getLabel() {         
      return label;
   }
    /**
   *Method to set a label.
   *@param labelIn for string "label"
   *@return isSet for boolean
   */
   public boolean setLabel(String labelIn) {
      boolean isSet = false;
      if (labelIn == null) {
         return isSet;
      }
      else {
         label = labelIn.trim();
         isSet = true;
         return isSet;
      }
   }
   /**
   *Method to access radius.
   @return variable radius 
   */
   public double getRadius() {
      return radius;
   }
   /**
   *Method to set radius.
   *@param radiusIn for double "radius"
   *@return isSet for boolean
   */
   public boolean setRadius(double radiusIn) {
      boolean isSet = false;
      if (radiusIn < 0) {
         return isSet;
      }
      else {
         isSet = true;
         radius = radiusIn;
         return isSet;
      }
   }
   /**
   *Method to access the height of the cylinder.
   *@return height for the double "height";
   */
   public double getCylinderHeight() {
      return height;
   }
   /**
   *Method to set the cylinder height.
   *@param heightIn for the variable height
   *@return boolean isSet, true for non-negative numbers
   */
   public boolean setCylinderHeight(double heightIn) {
      boolean isSet = false;
      if (heightIn < 0) {
         return isSet;
      }
      else {
         isSet = true;
         height = heightIn;
         return isSet;
      }
   }
   /**
   *Method to calculae the circumference.
   *@return circumference for the calculated variable
   */
   public double circumference() {
      double circumference = 2 * Math.PI * radius;
      return circumference;
   }
   /**
   *Method to calculate the surface area.
   *@return surfaceArea for the calulated value as a double
   */
   public double surfaceArea() {
      double surfaceArea = 2 * Math.PI * radius * (2 * radius + height);
      return surfaceArea;
   }
   /**
   *Method to calculate the volume.
   *@return volume for the calculated value as a double
   */
   public double volume() {
      double volume = Math.PI * Math.pow(radius, 2) 
         * ((4.0 / 3.0) * radius + height);
      return volume;
   }
   /**
   *Method to display the input and the calculations in a String.
   *@return output for the final string
   */
   public String toString() {
      DecimalFormat df = new DecimalFormat("#,##0.0##");
      String output = "Spherocylinder \"" + label + "\" with radius " + radius;
      output += " and cylinder height " + height + " has:";
      output += "\n\tcircumference = " + df.format(circumference()) + " units";
      output += "\n\tsurface area = " + df.format(surfaceArea())
               + " square units";
      output += "\n\tvolume = " + df.format(volume()) + " cubic units";
      return output;
   }
}
