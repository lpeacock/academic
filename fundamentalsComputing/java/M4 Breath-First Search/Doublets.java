import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

import java.util.Arrays;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;
import java.util.TreeSet;

import java.util.stream.Collectors;

/**
 * Provides an implementation of the WordLadderGame interface. 
 *
 * @author Lucas Peacock (lwp0009@auburn.edu)
 * @author Dean Hendrix (dh@auburn.edu)
 * @version 2018-10-22
 */
public class Doublets implements WordLadderGame {

   // The word list used to validate words.
   // Must be instantiated and populated in the constructor.
   /////////////////////////////////////////////////////////////////////////////
   // DECLARE A FIELD NAMED lexicon HERE. THIS FIELD IS USED TO STORE ALL THE //
   // WORDS IN THE WORD LIST. YOU CAN CREATE YOUR OWN COLLECTION FOR THIS     //
   // PURPOSE OF YOU CAN USE ONE OF THE JCF COLLECTIONS. SUGGESTED CHOICES    //
   // ARE TreeSet (a red-black tree) OR HashSet (a closed addressed hash      //
   // table with chaining).
   /////////////////////////////////////////////////////////////////////////////
   List<String> EMPTY_LADDER = new ArrayList<>();
   TreeSet<String> lexicon;
   /**
    * Instantiates a new instance of Doublets with the lexicon populated with
    * the strings in the provided InputStream. The InputStream can be formatted
    * in different ways as long as the first string on each line is a word to be
    * stored in the lexicon.
    */
   
   public Doublets(InputStream in) {
      try {
         lexicon = new TreeSet<String>();
         Scanner s =
            new Scanner(new BufferedReader(new InputStreamReader(in)));
         while (s.hasNext()) {
            String str = s.next();
            lexicon.add(str.toLowerCase());
            s.nextLine();
         }
         in.close();
      }
      catch (java.io.IOException e) {
         System.err.println("Error reading from InputStream.");
         System.exit(1);
      }
   }
   public Doublets() {
   
   }


   //////////////////////////////////////////////////////////////
   // ADD IMPLEMENTATIONS FOR ALL WordLadderGame METHODS HERE  //
   //////////////////////////////////////////////////////////////

   public int getHammingDistance(String str1, String str2) {
      if (str1.length() != str2.length()) {
         return -1;
      }
      int counter = 0;
      int position = 0;
      while (position < str1.length()) {
         char a = str1.charAt(position);
         char b = str2.charAt(position);
      
         if (a != b) {
            counter++;
         }
         position++;
         
      }
      return counter;
   }
   
   public List<String> getMinLadder(String start, String end) {
      List<String> ladder = new ArrayList<String>();
      if (start.equals(end)) {
         ladder.add(start);
         return ladder;
      }
      if (start.length() != end.length()) {
         return EMPTY_LADDER;
      }
      if (!isWord(start) || !isWord(end)) {
         return EMPTY_LADDER;
      }
    
      Deque<Node> q = new ArrayDeque<>();
      TreeSet<String> tree = new TreeSet<>();
      
      List<String> neighbors = getNeighbors(start);
      for (String x : neighbors) {
         q.add(new Node(x));
      }
      ladder.add(start);
      String next = "";
       
      while (!next.equals(end)) {
         next = nextCenter(q, end);
         if (next.equals(end)) {
            ladder.add(end);
            break;
         }
         if (!tree.contains(next)) {
            ladder.add(next);
         }
         tree.add(next);
         List<String> newNeighbors = getNeighbors(next);
         for (String x : newNeighbors) {
            q.add(new Node(x));
            
         }
      } 
      return ladder;
   }
   
   private String nextCenter(Deque<Node> que, String end) {
      if (que.size() == 0 || que == null) {
         return "";
      }
      List<String> c = new ArrayList<String>();
      String min = que.remove().element;
      int a = getHammingDistance(min, end);
      for (Node x : que) {
         int b = getHammingDistance(x.element, end);
         if (b < a) {
            c.add(x.element);
            min = x.element;
         }
      
      }
      return min;
   }
   
   public List<String> getNeighbors(String word) { 
      List<String> neighbor = new ArrayList<String>();
      TreeSet<String> set = new TreeSet<String>();
       
      if (word == null)
         return EMPTY_LADDER;
      
      for (int i = 0; i < word.length(); i++) {
         StringBuilder myName = new StringBuilder(word);
         for (int j = 97; j < 123; j++) {
            myName.setCharAt(i, (char) j);
            String test = myName.toString();
            if (test.equals(word)) {
               continue;
            }
            if (isWord(test)) {
               neighbor.add(test);
            }            
         }
      }
      
      return neighbor;
   }
   
   public int getWordCount() {
      int count = lexicon.size();
      return count;
   }
   
   public boolean isWord(String str) {
      if (lexicon.contains(str)) {
         return true;
      }
      return false;
   }
   
   public boolean isWordLadder(List<String> sequence) {
      int count = 0;
      if ((sequence == null) || (sequence.isEmpty())) {
         return false;
      }
      
      for (int i = 0; i < sequence.size() - 1; i++){
         if (isWord(sequence.get(i)) != true || isWord(sequence.get(i + 1)) != true || (getHammingDistance(sequence.get(i), sequence.get(i + 1)) != 1))
            count++;  
      }
      boolean x = (count == 0);
      return x;
   }
   /**
    * Defines a node class for a doubly-linked list.
    */
   class Node {
      /** the value stored in this node. */
      String element;
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
      public Node(String e) {
         element = e;
         next = null;
         prev = null;
      }
   }

}

