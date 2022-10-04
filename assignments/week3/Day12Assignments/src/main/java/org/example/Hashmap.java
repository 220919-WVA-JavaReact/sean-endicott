package org.example;

import java.util.HashMap;
import java.util.Set;

public class Hashmap {
    public static void main(String[] args) {


        // 1. Create a HashMap with Integers for the Keys and Strings for the Entries. Insert 5 entries with numbers as
        // the key and colors as the value associated
        HashMap<Integer, String> colors = new HashMap<>();
        colors.put(1, "blue");
        colors.put(2, "grey");
        colors.put(3, "pink");
        colors.put(4, "green");
        colors.put(5, "red");


        // 2. Write a Java program to count the number of key-value (size) mappings in a map.

        System.out.println(colors.size());

        // 3. Write a Java program to test if a map contains a mapping for the specified key

        System.out.println(colors.containsKey(3));

        // 4. Write a Java program to get the value of a specified key in a map.
        System.out.println(colors.containsValue(3));

        // 5. Write a Java program to get a set view of the keys contained in this map.
        Set keySet = colors.keySet();
        System.out.println(keySet);
    }

}
