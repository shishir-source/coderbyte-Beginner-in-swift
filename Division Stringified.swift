//
//  Division Stringified.swift
//  
/*
 *  Division Stringified                                                                *
 *  Using the JavaScript language, have the function DivisionStringified(num1,num2)     *
 *  take both parameters being passed, divide num1 by num2, and return the result as    *
 *  a string with properly formatted commas. If an answer is only 3 digits long,        *
 *  return the number with no commas (ie. 2 / 3 should output "1"). For example:        *
 *  if num1 is 123456789 and num2 is 10000 the output should be "12,345".   
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func divisionStringified(_ num1: Int, _ num2: Int) -> String {
    
    let result = num1/num2
    
    let resultString = String(result)
    
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    
    if let formattedString = numberFormatter.string(from: NSNumber(value: result)) {
        return formattedString
    }else{
        return resultString
    }
}

let num1 = 10
let num2 = 5
let output = divisionStringified(num1,num2)
print(output)  // Output: "12,345"
