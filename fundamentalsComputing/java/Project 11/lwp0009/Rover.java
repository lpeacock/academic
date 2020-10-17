import java.util.Scanner;

public class Rover{

   static final String NEXT_DIRECTION = "What direction do you wish to travel? ";
   static final String NEXT_DISTANCE = "What distance shall you move? ";
   
   public static void main(String[] args) {
   
      Scanner userInput = new Scanner(System.in);
      Movement character = new Movement();
      String direction;
      System.out.println("Welcome to Rover.");
      do {
         System.out.print(NEXT_DIRECTION);
         direction = userInput.nextLine().trim().toLowerCase();
         System.out.print(NEXT_DISTANCE);
         int distance = userInput.nextInt();
      
         switch(direction) {
         
            case "left": 
            case "l":
               character.moveLeft(distance);
               break;
            case "right":
            case "r":
               character.moveRight(distance);
               break;
            case "up":
            case "u":
               character.moveUp(distance);
               break;
            case "down":
            case "d":
               character.moveDown(distance);
               break;
            case "end":
               break;
                    
         
            default: System.out.println("Invalid direction");
         }
         System.out.println(character+"\n");
         userInput.nextLine();
      } while (direction != "end");
   }
}