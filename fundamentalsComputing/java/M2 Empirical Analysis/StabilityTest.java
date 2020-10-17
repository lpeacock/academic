public class StabilityTest{

   public static void main(String[] args) {
      Data[] original = {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
      Data[] a = {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
      Data[] b = {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
      Data[] c = {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
      Data[] d = {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
      Data[] e= {new Data(5, 1), new Data(4, 2), new Data(3, 3), new Data(5, 4),
         new Data(2, 5), new Data(1, 6), new Data(5, 7)};
   
      int key = 903830703;
      SortingLab<Data> sli = new SortingLab<Data>(key);
     
      sli.sort1(a);
      sli.sort2(b);
      sli.sort3(c);
      sli.sort4(d);
      sli.sort5(e);
   
   }
}