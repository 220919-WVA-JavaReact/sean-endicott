package org.example;

import java.util.HashSet;

public class Hashset {
    public static void main(String[] args) {
        // 1. Write a Java program to append the specified element to the end of a hash set
        HashSet<String> colors = new HashSet();
        colors.add("blue");
        colors.add("red");
        colors.add("green");
        colors.add("yellow");
        System.out.println(colors);




        // 2. Write a Java program to iterate through all elements in a hash list.
        for (String color : colors){
            System.out.println(color);
        }


        // 3. Write a Java program to get the number of elements in a hash set
        System.out.println(colors.size());


        // 4. Write a Java program to test a hash set is empty or not
        System.out.println(colors.isEmpty());

    }
}
