import static java.lang.Math.sqrt;
import java.text.DecimalFormat;

public class Movement extends Location {
     
   public Movement() {
      vCoor = 0;
      hCoor = 0;}
   public String moveLeft(int inputDistance) {
      hCoor += inputDistance;
      return "";
   }
   public String moveRight(int inputDistance) {
      hCoor -= inputDistance;
      return "";
   
   }
   public String moveUp(int inputDistance) {
      vCoor += inputDistance;
      return "";
   
   }
   public String moveDown(int inputDistance) {
      vCoor -= inputDistance;
      return "";
   
   }
   public double slantDistance() {
      if (vCoor != 0 && hCoor != 0) {
         double distance = Math.sqrt(((vCoor * vCoor) + (hCoor * hCoor)));
         return distance;
      }
      else {
         return vCoor + hCoor;
      }
   }
   public String toString() {
      DecimalFormat format = new DecimalFormat("#.00");
      String distance = format.format(slantDistance());
      String output = "The character is " + distance + " meters away from the origin.";
      return output;
   }


}