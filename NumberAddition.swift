//
//  NumberAddition.swift
//
/*
 *  Number Addition                                                                     *
 *  Using the JavaScript language, have the function NumberSearch(str) take the str     *
 *  parameter, search for all the numbers in the string, add them together, then        *
 *  return that final number. For example: if str is "88Hello 3World!" the output       *
 *  should be 91. You will have to differentiate between single digit numbers and       *
 *  multiple digit numbers like in the example above. So "55Hello" and "5Hello 5"       *
 *  should return two different answers. Each string will contain at least one letter   *
 *  or symbol.                                                                          
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func numberSearch(_ num: String) -> Int {
    
    let component = num.components(separatedBy: CharacterSet.decimalDigits.inverted)
    
    let array = component.compactMap{ Int(($0)) }
    
    let sum = array.reduce(0, +)
        
    return sum
}

print(numberSearch("88Hello 3World!"))
