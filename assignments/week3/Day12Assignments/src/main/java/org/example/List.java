package org.example;

import java.util.ArrayList;
import java.util.Collections;

public class List {
    public static void main(String[] args) {
        // 1. Write a Java program to create a new array list, add some colors (string) and print out the collection.
        ArrayList<String> colors = new ArrayList<String>();
        colors.add("blue");
        colors.add("green");
        colors.add("yellow");
        colors.add("red");



        // 2. Write a Java program to iterate through all elements in an array list
        for (String color : colors) {
            System.out.println(color);
        }


        // 3. Write a Java program to insert an element into the array list at the first position
        colors.add(0, "grey");


        // 4. Write a Java program to retrieve an element (at a specified index) from a given array list
        //colors.get(0);
        System.out.println(colors.get(0));

        // 5. Write a Java program to remove the third element from an array list.
        //colors.remove(2);
        System.out.println(colors.remove(2));

        // 6. Write a Java program to search an element in an array list.
        // colors.indexOf("red");
        System.out.println(colors.indexOf("red"));

        // 7. Write a Java program to sort a given array list.
        Collections.sort(colors);
        for(String color : colors ){
            System.out.println(color);
        }


    }
}

