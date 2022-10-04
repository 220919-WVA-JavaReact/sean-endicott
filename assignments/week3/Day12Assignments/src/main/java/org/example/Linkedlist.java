package org.example;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;

public class Linkedlist {
    public static void main(String[] args) {
        // 1. Write a Java program to append the specified element to the end of a linked list. Add several values.
        LinkedList<String> colors = new LinkedList();
        colors.add("silver");
        colors.add("white");
        colors.add("black");
        colors.add("brown");

        // 2. Write a Java program to iterate through all elements in a linked list.
        for(String color : colors){
            System.out.println(color);
        }

        // 3. Write a Java program to iterate a linked list in reverse order
        Collections.reverse(colors);
        System.out.println(colors);

        // 4.  Write a Java program to insert the specified element at the front of a linked list
        colors.addFirst("blue");
        // 5. Write a Java program to insert some elements at the specified position into a linked list.
        colors.add(3, "brown");
        // 6. Write a Java program to get the first and last occurrence of the specified elements in a linked list.
        Object firstE = colors.get(0);
        Object lastE = colors.getLast();
        System.out.println(firstE + "," + lastE);
        // 7. Write a Java program to check if a particular element exists in a linked list.
        System.out.println(colors.contains("brown"));
        // 8. Write a Java program to convert a linked list to array list.
        ArrayList<String> colorsList = new ArrayList<>();
        for (String l : colors) {
            System.out.println(colorsList);
        }
    }
}
