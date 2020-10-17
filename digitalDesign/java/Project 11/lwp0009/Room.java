public class Room extends Movement {

   int length;
   int width;
   Key key = new Key();

   public Room() {
      length = 5;
      width = 5;
   }
   /*
   public boolean keyFound() {
      if (hCoor == key.hCoor && vCoor == key.vCoor) {
         return true;
      }
      else {
         return false;
      }
   }
   */
   
}