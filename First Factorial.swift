//
//  First Factorial.swift
//
/*
 *  Using the JavaScript language, have the function FirstFactorial(num) take the num   *
 *  parameter being passed and return the factorial of it (ie. if num = 4,              *
 *  return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.    *                    
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func getFactorial(_ num: Int) -> Int {
    
    guard num > 1 && num < 18 else {
        return -1
    }
    
    var sum = 1
    for i in 1...num {
        sum *= i
    }
    return sum
}

print(getFactorial(5))
