public class Test {

   public static void main(String[] args) {
      Doublets a = new Doublets();
      String b = "clash";
      String c = "clast";
      int d = a.getHammingDistance(b, c);
      System.out.println(d);
   }
}