public class Data implements Comparable<Data> {

   private Integer field1;
   private Integer field2;
   public Data(Integer f1, Integer f2) {
      field1 = f1;
      field2 = f2;
   }
   public int compareTo(Data that) {
      if (this.field1 < that.field1)
         return -1;
      else if (this.field1 > that.field1)
         return 1;
      else
         return 0;
   }
   public String toString() {
      String test = "(" + field1 + " , " + field2 + ") ";
      return test;
   }
}