//
//  Additive Persistence.swift
//  
/*
 *  Using the JavaScript language, have the function AdditivePersistence(num) take the  *
 *  num parameter being passed which will always be a positive integer and return its   *
 *  additive persistence which is the number of times you must add the digits in num    *
 *  until you reach a single digit. For example: if num is 2718 then your program       *
 *  should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9.
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func AdditivePersistence(_ num: Int) -> Int {
    var count = 0
    var currentNum = num

    func sumOfDigits(_ n: Int) -> Int {
        return String(n).compactMap{ $0.wholeNumberValue}.reduce(0, +)
    }
    
    while currentNum >= 10 {
        currentNum = sumOfDigits(currentNum)
        count += 1
    }
    
    return count
    
}
print(AdditivePersistence(123))
