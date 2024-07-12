//
//  Simple Symbols.swift
//
/*
 *  Using the JavaScript language, have the function SimpleSymbols(str) take the str    *
 *  parameter being passed and determine if it is an acceptable sequence by either      *
 *  returning the string true or false. The str parameter will be composed of + and =   *
 *  symbols with several letters between them (ie. ++d+===+c++==a) and for the string   *
 *  to be true each letter must be surrounded by a + symbol. So the string to the left  *
 *  would be false. The string will not be empty and will have at least one letter.     *
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func simpleAdding(_ str: String) -> String {
    let charachters = Array(str)
    
    for (index, char) in charachters.enumerated() {
        if char.isLetter{
            
            if index == 0 || index == (charachters.count - 1) {
                return "false"
            }
            
            if charachters[index - 1] != "+" || charachters[index + 1] != "+" {
                return "false"
            }
            
        }
    }
    
    return "true"
}

print(simpleAdding("+a+==+b+"))
