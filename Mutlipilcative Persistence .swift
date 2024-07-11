//
//  Mutlipilcative Persistence .swift
//
/*
 *  Multiplicative Persistence                                                          *
 *  Using the JavaScript language, have the function FirstFactorial(num) take the num   *
 *  parameter being passed and return the factorial of it (ie. if num = 4,              *
 *  return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.    *                                                     
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func firstFactorial(_ num: Int) -> Int {
    
    guard num > 1 && num < 18 else {
        return -1
    }
    var numString = ""
    for i in 1...num {
        numString.append(String(i))
    }
    return Int(numString)!
}

print(firstFactorial(5))
