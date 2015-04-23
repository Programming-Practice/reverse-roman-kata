/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.romannumeralconverter.app;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ssawan
 */
public class Converter {

    //hey it's the api
    public int converter(String numerals) {
        return translateNumeralsToNumberValues(numerals.toCharArray());
    }

    private int translateNumeralsToNumberValues(char[] numerals) {
        //hate the fact that I am using an arraylist...
        List numberPair = new ArrayList<>();
        int sum = 0;
        for (int i = 0; i < numerals.length; i++) {
            switch (numerals[i]) {
                case 'I':
                    numberPair.add(1);
                    sum += checkListSize(numberPair);
                    break;
                case 'V':
                    numberPair.add(5);
                    sum += checkListSize(numberPair);
                    break;
                case 'X':
                    numberPair.add(10);
                    sum += checkListSize(numberPair);
                    break;
                case 'L':
                    numberPair.add(50);
                    sum += checkListSize(numberPair);
                    break;
                case 'C':
                    numberPair.add(100);
                    sum += checkListSize(numberPair);
                    break;
                case 'D':
                    numberPair.add(500);
                    sum += checkListSize(numberPair);
                    break;
                case 'M':
                    numberPair.add(1000);
                    sum += checkListSize(numberPair);
                    break;
                default:
                    return 0;
            }
        }
        if (numberPair.size() == 1) {
            return sum + (int) numberPair.get(0);
        } else {
            return sum;
        }
    }
    
    //we have three options here: one, keep it the way it is and use check array size to call number evaluator
    //two, combine the methods so we are not passing around redundant data as something resembling state or
    //three, make the number pair list a global variable to let every method have access to it.
    //personally, I hate global variables from a design perspective but who knows.
    
    private int checkListSize(List arrayToBeChecked) {
        if (arrayToBeChecked.size() == 2) {
            int answer = numberPairEvaluator((int) arrayToBeChecked.get(0), (int) arrayToBeChecked.get(1), arrayToBeChecked);
            return answer;
        } else {
            return 0;
        }
    }
    
    private int numberPairEvaluator(int firstNumber, int secondNumber, List arrayToBeChecked) {
        if (firstNumber > secondNumber) {
            arrayToBeChecked.clear();
            arrayToBeChecked.add(secondNumber);
            return firstNumber;
        } else if (firstNumber == secondNumber) {
            arrayToBeChecked.clear();
            return firstNumber + secondNumber;
        } else {
            arrayToBeChecked.clear();
            return secondNumber - firstNumber;
        }
    }

    
}
