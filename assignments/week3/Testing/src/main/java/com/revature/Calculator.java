package com.revature;

public class Calculator {
    // Addition
    public int addNumbers(int a, int b) {
        return a + b;
    }


    public int subtractNumbers(int a, int b) {
        return a - b;
    }


    public class Division

    public double divideNumbers(double a, double b) throws DivideByZeroException {
        // I'm not entirely sure what went wrong but we can create a new exception to test this
        if (b == 0) {
            throw new DivideByZeroException("You cannot divide by zero!");
        } else {
            return a / b;
        }
    }
}
    // The previous method did not throw an Arithmetic exception because we divide by float zero and floats at their core
    // are always rounded so we if we do it with integers it should work

//    public int division(int a, int b){
//        return a/b;
//    }
//
//    public int increment() {
//        // count from 1 to 100 in multiples of 3.
//
//        for(int i = 1; i <= 100; i+=3){
//            System.out.println(i);
//        }
//
//    }
//}
