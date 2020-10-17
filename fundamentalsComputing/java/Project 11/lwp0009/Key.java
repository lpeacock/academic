import java.util.Random;

public class Key extends Location {

   public Key() {
      Random coor = new Random();
      hCoor = coor.nextInt(5);
      vCoor = coor.nextInt(5);
   }
}