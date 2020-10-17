import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/**
 * Defines a library of selection methods on Collections.
 *
 * @author  Lucas Peacock (you@auburn.edu)
 * @author  Dean Hendrix (dh@auburn.edu)
 * @version 9 September 2018
 *
 */
public final class Selector {

/**
 * Can't instantiate this class.
 *
 * D O   N O T   C H A N G E   T H I S   C O N S T R U C T O R
 *
 */
   private Selector() { }


   /**
    * Returns the minimum value in the Collection coll as defined by the
    * Comparator comp. If either coll or comp is null, this method throws an
    * IllegalArgumentException. If coll is empty, this method throws a
    * NoSuchElementException. This method will not change coll in any way.
    *
    * @param coll    the Collection from which the minimum is selected
    * @param comp    the Comparator that defines the total order on T
    * @return        the minimum value in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T min(Collection<T> coll, Comparator<T> comp) {
      if (coll == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0) {
         throw new NoSuchElementException();
      }
      T currentMin = coll.iterator().next();
      for (T element: coll) {
         if (comp.compare(element, currentMin) < 0) {
            currentMin = element;
         }
      }
      return currentMin;
   }
   


   /**
    * Selects the maximum value in the Collection coll as defined by the
    * Comparator comp. If either coll or comp is null, this method throws an
    * IllegalArgumentException. If coll is empty, this method throws a
    * NoSuchElementException. This method will not change coll in any way.
    *
    * @param coll    the Collection from which the maximum is selected
    * @param comp    the Comparator that defines the total order on T
    * @return        the maximum value in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T max(Collection<T> coll, Comparator<T> comp) {
      if (coll == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0) {
         throw new NoSuchElementException();
      }
      T currentMax = coll.iterator().next();
      for (T element: coll) {
         if (comp.compare(element, currentMax) > 0) {
            currentMax = element;
         }
      }
      return currentMax;
   }


   /**
    * Selects the kth minimum value from the Collection coll as defined by the
    * Comparator comp. If either coll or comp is null, this method throws an
    * IllegalArgumentException. If coll is empty or if there is no kth minimum
    * value, this method throws a NoSuchElementException. This method will not
    * change coll in any way.
    *
    * @param coll    the Collection from which the kth minimum is selected
    * @param k       the k-selection value
    * @param comp    the Comparator that defines the total order on T
    * @return        the kth minimum value in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T kmin(Collection<T> coll, int k, Comparator<T> comp) {
      if (coll == null || comp == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0 || coll.size() < k) {
         throw new NoSuchElementException();
      }
      
      T currentMin = coll.iterator().next();
      ArrayList<T> test = new ArrayList<T>(coll);
      java.util.Collections.sort(test, comp);
      
      int counter = 1;
      int counterPosition = 0;
      for (int i = 0; i + 1 < test.size() && counter < k; i++) {
         if (test.get(i) == test.get(i + 1)) {
            counterPosition++;
         }
         else {
            counterPosition++;
            counter = counter + 1;
         }
      }
      if (counter != k) {
         throw new NoSuchElementException();
      }
   
      return test.get(counterPosition);
   }

   /**
    * Selects the kth maximum value from the Collection coll as defined by the
    * Comparator comp. If either coll or comp is null, this method throws an
    * IllegalArgumentException. If coll is empty or if there is no kth maximum
    * value, this method throws a NoSuchElementException. This method will not
    * change coll in any way.
    *
    * @param coll    the Collection from which the kth maximum is selected
    * @param k       the k-selection value
    * @param comp    the Comparator that defines the total order on T
    * @return        the kth maximum value in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T kmax(Collection<T> coll, int k, Comparator<T> comp) {
      if (coll == null || comp == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0 || k > coll.size()) {
         throw new NoSuchElementException();
      }
      
      T currentMin = coll.iterator().next();
      ArrayList<T> test = new ArrayList<T>(coll);
      java.util.Collections.sort(test, comp);
      
      int counter = 1;
      int counterPosition = test.size() - 1;
      for (int i = 1; i < test.size() && counter < k; i++) {
         if (test.get(test.size() - i) == test.get(test.size() - i - 1)) {
            counterPosition--;
         }
         else {
            counterPosition--;
            counter = counter + 1;
         }
      }
      if (counter != k) {
         throw new NoSuchElementException();
      }
      return test.get(counterPosition);
   }


   /**
    * Returns a new Collection containing all the values in the Collection coll
    * that are greater than or equal to low and less than or equal to high, as
    * defined by the Comparator comp. The returned collection must contain only
    * these values and no others. The values low and high themselves do not have
    * to be in coll. Any duplicate values that are in coll must also be in the
    * returned Collection. If no values in coll fall into the specified range or
    * if coll is empty, this method throws a NoSuchElementException. If either
    * coll or comp is null, this method throws an IllegalArgumentException. This
    * method will not change coll in any way.
    *
    * @param coll    the Collection from which the range values are selected
    * @param low     the lower bound of the range
    * @param high    the upper bound of the range
    * @param comp    the Comparator that defines the total order on T
    * @return        a Collection of values between low and high
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> Collection<T> range(Collection<T> coll, T low, T high,
                                         Comparator<T> comp) {
      if (coll == null || comp == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0) {
         throw new NoSuchElementException();
      }
     
      ArrayList<T> list = new ArrayList<T>(coll);
      ArrayList<T> returnedList = new ArrayList<T>();
      
      for (T element: coll) {
         boolean first = comp.compare(element, low) == 1 || comp.compare(element, low) == 0;
         boolean second = comp.compare(element, high) == -1 || comp.compare(element, high) == 0;
      
         if (first && second) {
            returnedList.add(element);
         }
      }
      if (returnedList.size() == 0) {
         throw new NoSuchElementException();
      }
      return returnedList;
   }
   


   /**
    * Returns the smallest value in the Collection coll that is greater than
    * or equal to key, as defined by the Comparator comp. The value of key
    * does not have to be in coll. If coll or comp is null, this method throws
    * an IllegalArgumentException. If coll is empty or if there is no
    * qualifying value, this method throws a NoSuchElementException. This
    * method will not change coll in any way.
    *
    * @param coll    the Collection from which the ceiling value is selected
    * @param key     the reference value
    * @param comp    the Comparator that defines the total order on T
    * @return        the ceiling value of key in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T ceiling(Collection<T> coll, T key, Comparator<T> comp) {
      
      if (coll == null || comp == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0) {
         throw new NoSuchElementException();
      }
      T low = key;
      T high = max(coll,comp);
      Collection<T> range = range(coll, low, high, comp);
      
      if (range.size() == 0) { //If no value exists
         throw new NoSuchElementException();
      }
      T value = min(range, comp);
   
      return value;
   }


   /**
    * Returns the largest value in the Collection coll that is less than
    * or equal to key, as defined by the Comparator comp. The value of key
    * does not have to be in coll. If coll or comp is null, this method throws
    * an IllegalArgumentException. If coll is empty or if there is no
    * qualifying value, this method throws a NoSuchElementException. This
    * method will not change coll in any way.
    *
    * @param coll    the Collection from which the floor value is selected
    * @param key     the reference value
    * @param comp    the Comparator that defines the total order on T
    * @return        the floor value of key in coll
    * @throws        IllegalArgumentException as per above
    * @throws        NoSuchElementException as per above
    */
   public static <T> T floor(Collection<T> coll, T key, Comparator<T> comp) {
      if (coll == null || comp == null) {
         throw new IllegalArgumentException();
      }
      if (coll.size() == 0) {
         throw new NoSuchElementException();
      }
      T low = min(coll,comp);
      T high = key;
      Collection<T> range = range(coll, low, high, comp);
      if (range.size() == 0) {
         throw new NoSuchElementException();
      }
      T value = max(range, comp);
   
      return value;
   }

}
