import java.util.Iterator;
import java.util.NoSuchElementException;

/**
 * Provides an implementation of the Set interface.
 * A doubly-linked list is used as the underlying data structure.
 * Although not required by the interface, this linked list is
 * maintained in ascending natural order. In those methods that
 * take a LinkedSet as a parameter, this order is used to increase
 * efficiency.
 *
 * @author Dean Hendrix (dh@auburn.edu)
 * @version 2018-10-04
 *
 */
public class LinkedSet<T extends Comparable<? super T>> implements Set<T> {

   //////////////////////////////////////////////////////////
   // Do not change the following three fields in any way. //
   //////////////////////////////////////////////////////////

   /** References to the first and last node of the list. */
   Node front;
   Node rear;

   /** The number of nodes in the list. */
   int size;

   /////////////////////////////////////////////////////////
   // Do not change the following constructor in any way. //
   /////////////////////////////////////////////////////////

   /**
    * Instantiates an empty LinkedSet.
    */
   public LinkedSet() {
      front = null;
      rear = null;
      size = 0;
   }


   //////////////////////////////////////////////////
   // Public interface and class-specific methods. //
   //////////////////////////////////////////////////

   ///////////////////////////////////////
   // DO NOT CHANGE THE TOSTRING METHOD //
   ///////////////////////////////////////
   /**
    * Return a string representation of this LinkedSet.
    *
    * @return a string representation of this LinkedSet
    */
   @Override
   public String toString() {
      if (isEmpty()) {
         return "[]";
      }
      StringBuilder result = new StringBuilder();
      result.append("[");
      for (T element : this) {
         result.append(element + ", ");
      }
      result.delete(result.length() - 2, result.length());
      result.append("]");
      return result.toString();
   }


   ///////////////////////////////////
   // DO NOT CHANGE THE SIZE METHOD //
   ///////////////////////////////////
   /**
    * Returns the current size of this collection.
    *
    * @return  the number of elements in this collection.
    */
   public int size() {
      return size;
   }

   //////////////////////////////////////
   // DO NOT CHANGE THE ISEMPTY METHOD //
   //////////////////////////////////////
   /**
    * Tests to see if this collection is empty.
    *
    * @return  true if this collection contains no elements, false otherwise.
    */
   public boolean isEmpty() {
      return (size == 0);
   }


   /**
    * Ensures the collection contains the specified element. Neither duplicate
    * nor null values are allowed. This method ensures that the elements in the
    * linked list are maintained in ascending natural order.
    *
    * @param  element  The element whose presence is to be ensured.
    * @return true if collection is changed, false otherwise.
    */
   public boolean add(T element) {
      if (element == null) {
         return false;
      }
      if (this.contains(element)) {
         return false;
      }
      else {
         Node carrier = new Node(element);
         //If creating a brand new set
         if (isEmpty()) {
            front = carrier;
            rear = carrier;
         }
         else {
            Node before = prevNode(element);
            //If the element goes in the front of the set
            if (before == null) {
               carrier.next = front;
               carrier.next.prev = carrier;
               front = carrier;
            }
            //If the element goes to the end of the set
            else if (before == rear) {
               carrier.prev = rear;
               carrier.prev.next = carrier;
               rear = carrier;
            }
            //If the element goes in the middle of the set
            else {
               carrier.next = before.next;
               carrier.prev = before;
               before.next.prev = carrier;
               before.next = carrier; 
            }
         }
         size++;
         return true;
      }
   }
   
   private Node prevNode(T element) {
      Node current = front;
      while (current != null) {
         if (current.element.compareTo(element) > 0) {
            return current.prev;
         }
         current = current.next;
      }
      return this.rear;
   }
   /**
    * Ensures the collection does not contain the specified element.
    * If the specified element is present, this method removes it
    * from the collection. This method, consistent with add, ensures
    * that the elements in the linked lists are maintained in ascending
    * natural order.
    *
    * @param   element  The element to be removed.
    * @return  true if collection is changed, false otherwise.
    */
    
   public boolean remove(T element) {
      if (element == null) {
         return false;
      }
      if (isEmpty()) {
         return false;
      }
      
      Node current = front;
      boolean found = false;
      while (!found && current != null) {
      
         if (current.element.equals(element)) {
         
            if (size() == 1) {
               front = null;
               rear = null;
               element = null;
            }
            else if (current == front) {
               
               current.next.prev = null;
               front = current.next;
            }
            
            else if (current == rear) {
               current.prev.next = null;
               rear = current.prev;           
            }
            else {
               current.prev.next = current.next;
               current.next.prev = current.prev;
            }
            size--;
            found = true;
         }
         current = current.next;
      }
      return found;
   }


   /**
    * Searches for specified element in this collection.
    *
    * @param   element  The element whose presence in this collection is to be tested.
    * @return  true if this collection contains the specified element, false otherwise.
    */
   public boolean contains(T element) {
      if (isEmpty()) {
         return false;
      }
      if (element.equals(front.element)) {
         return true;
      }
      if (element.equals(rear.element)) {
         return true;
      }
      Node current = front.next;
      while (current != rear && current != null) {
         if (current.element.equals(element)) {
            return true;
         }
         current = current.next;
      }
      return false;
   }


   /**
    * Tests for equality between this set and the parameter set.
    * Returns true if this set contains exactly the same elements
    * as the parameter set, regardless of order.
    *
    * @return  true if this set contains exactly the same elements as
    *               the parameter set, false otherwise
    */
   public boolean equals(Set<T> s) {
      if (s == null) {
         return false;
      }
      if (this.size() != s.size()) {
         return false;
      }
      if (this.complement(s).size() == 0) {
         return true;
      }
      else {
         return false;
      }
   }


   /**
    * Tests for equality between this set and the parameter set.
    * Returns true if this set contains exactly the same elements
    * as the parameter set, regardless of order.
    *
    * @return  true if this set contains exactly the same elements as
    *               the parameter set, false otherwise
    */
   public boolean equals(LinkedSet<T> s) {
      if (s == null) {
         return false;
      }
      if (this.size() != s.size()) {
         return false;
      }
      if (this.complement(s).size() == 0) {
         return true;
      }
      else {
         return false;
      }
   }


   /**
    * Returns a set that is the union of this set and the parameter set.
    *
    * @return  a set that contains all the elements of this set and the parameter set
    */
   public Set<T> union(Set<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = this.front;
      
      while (current != null) {
         output.add(current.element);
         current = current.next;
      }
      Iterator<T> it = s.iterator();
         
      while (it.hasNext()) {
         output.add(it.next());
      }
      return output;
   }


   /**
    * Returns a set that is the union of this set and the parameter set.
    *
    * @return  a set that contains all the elements of this set and the parameter set
    */
    //Invalid time complexity; remove add

   public Set<T> union(LinkedSet<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = this.front;
      
      while (current != null) {
         output.add(current.element);
         current = current.next;
      }
      
      Node currentS = s.front;
      
      while (currentS != null) {
         output.add(currentS.element);
         currentS = currentS.next;
      }
   
              
      return output;
   }


   /**
    * Returns a set that is the intersection of this set and the parameter set.
    *
    * @return  a set that contains elements that are in both this set and the parameter set
    */
   public Set<T> intersection(Set<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = front;
   
      while (current != null) {   
         if (s.contains((T)current.element)) {
            output.add((T)current.element);
         }
      
         current = current.next;
      }         
      return output;
   }

   /**
    * Returns a set that is the intersection of this set and
    * the parameter set.
    *
    * @return  a set that contains elements that are in both
    *            this set and the parameter set
    */
   //Invalid time complexity; remove add

   public Set<T> intersection(LinkedSet<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = s.front;
            
      while (current != null) {
         T element = current.element;
      
         if (this.contains(element)) {
            output.add(element);
         }
         current = current.next;
      }
      return output;
   }


   /**
    * Returns a set that is the complement of this set and the parameter set.
    *
    * @return  a set that contains elements that are in this set but not the parameter set
    */
   public Set<T> complement(Set<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = this.front;
      while (current != null) {
         if (!s.contains(current.element)) {
            output.add(current.element);
         }
         current = current.next;
      }
      return output;
   }


   /**
    * Returns a set that is the complement of this set and
    * the parameter set.
    *
    * @return  a set that contains elements that are in this
    *            set but not the parameter set
    */
    //Invalid time complexity; remove add
   public Set<T> complement(LinkedSet<T> s) {
      if (s == null) {
         throw new NullPointerException();
      }
      LinkedSet<T> output = new LinkedSet<T>();
      Node current = this.front;
      while (current != null) {
         if (!s.contains(current.element)) {
            output.add(current.element);
         }
         current = current.next;
      }
      return output;
   }


   /**
    * Returns an iterator over the elements in this LinkedSet.
    * Elements are returned in ascending natural order.
    *
    * @return  an iterator over the elements in this LinkedSet
    */
   public Iterator<T> iterator() {
      Iterator<T> it = 
         new Iterator<T>() {
            private Node current = front;
         
            @Override
            public boolean hasNext() {
               return current != null;                  
            
            }
         
            @Override
            public T next() {
            
               if (!hasNext()) {
                  throw new NoSuchElementException();
               }
                  
               T element = current.element;
               current = current.next;
               return element;
            }
         
            @Override
            public void remove() {
               throw new UnsupportedOperationException();
            }
         };
      return it;
   }


   /**
    * Returns an iterator over the elements in this LinkedSet.
    * Elements are returned in descending natural order.
    *
    * @return  an iterator over the elements in this LinkedSet
    */
   public Iterator<T> descendingIterator() {
      Iterator<T> it = 
         new Iterator<T>() {
            private Node current = rear;
         
            @Override
            public boolean hasNext() {
               return current != null;                  
               
            }
         
            @Override
            public T next() {
               if (!hasNext()) {
                  throw new NoSuchElementException();
               }
            
               T element = current.element;
               current = current.prev;
               return element;
            }
         
            @Override
            public void remove() {
               throw new UnsupportedOperationException();
            }
         };
      return it;
   }


   /**
    * Returns an iterator over the members of the power set
    * of this LinkedSet. No specific order can be assumed.
    *
    * @return  an iterator over members of the power set
    */
    
   public Iterator<Set<T>> powerSetIterator() {
      return new PowerSetIterator(this.size);
   }
   
   private class PowerSetIterator implements Iterator<Set<T>> {
      int current = 0;
      int num;
      int totalSets;
      Node currentNode;
               
      public PowerSetIterator(int numOfElements) {
         current = 0;
         num = numOfElements;
         totalSets = (int) Math.pow(2,num);
         currentNode = front;
      }  
        
      public boolean hasNext() {
         return current < totalSets;
      }   
      
      // Possible N^2 time in next()
      
      public Set<T> next() {
         Set<T> output = new LinkedSet<T>();
         String binaryString = Integer.toBinaryString(current);
         while (binaryString.length() < num) {
            binaryString = "0" + binaryString;
         }
         for (int i = 0; i < num; i++) {
            if (binaryString.charAt(i) == '1') {
               T element = currentNode.element;
               output.add(element);
            }
            currentNode = currentNode.next;
         }
         currentNode = front;
         current++;
         return output;
      } 
      
      @Override
            public void remove() {
         throw new UnsupportedOperationException();
      }
   }
   



   //////////////////////////////
   // Private utility methods. //
   //////////////////////////////

   // Feel free to add as many private methods as you need.

   ////////////////////
   // Nested classes //
   ////////////////////

   //////////////////////////////////////////////
   // DO NOT CHANGE THE NODE CLASS IN ANY WAY. //
   //////////////////////////////////////////////

   /**
    * Defines a node class for a doubly-linked list.
    */
   class Node {
      /** the value stored in this node. */
      T element;
      /** a reference to the node after this node. */
      Node next;
      /** a reference to the node before this node. */
      Node prev;
   
      /**
       * Instantiate an empty node.
       */
      public Node() {
         element = null;
         next = null;
         prev = null;
      }
   
      /**
       * Instantiate a node that containts element
       * and with no node before or after it.
       */
      public Node(T e) {
         element = e;
         next = null;
         prev = null;
      }
   }

}
