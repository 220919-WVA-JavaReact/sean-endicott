package com.revature;


import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        System.out.println("This is a simple calculator");
        System.out.println("Enter the first number: ");

        float num1 = scan.nextInt();
        System.out.println(num1);

        System.out.println("Enter the second number: ");
        float num2 = scan.nextInt();
        System.out.println(num2);

        int menu_selection = aggregateMenu();

       do {
           switch (menu_selection) {
               case 1:
                   System.out.println(num1 + num2);
                   break;
               case 2:
                   System.out.println(num1 - num2);
                   break;
               case 3:
                   System.out.println(num1 * num2);
                   break;
               case 4:
                   System.out.println(num1 / num2);
                   break;
               default:
                   System.out.println("Please choose a valid number");
                   menu_selection = aggregateMenu();
           }

       } while (false);
    }

    public static int aggregateMenu() {
        Scanner input = new Scanner(System.in);
        System.out.println("how would you like to calculate the numbers? ");
        System.out.println("############################################");
        System.out.println("1. Addition");
        System.out.println("2. Subtraction");
        System.out.println("3. Multiplication");
        System.out.println("4. division");


        int selection = input.nextInt();
        int selection1 = selection;
        return selection1;
    }

}