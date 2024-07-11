//
//  Dash Insert.swift
//
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func dashInsert(_ str: String) -> String {
    var idx = 0
    var result = Array(str)  // Convert the string to an array of characters for easier manipulation
    
    while idx < result.count - 1 {
        if let firstNum = Int(String(result[idx])),
           let secondNum = Int(String(result[idx + 1])),
           firstNum % 2 == 1 && secondNum % 2 == 1 {
            result.insert("-", at: idx + 1)  // Insert dash at the correct position
            idx += 2  // Skip the next character as it's part of the pair we just checked
        } else {
            idx += 1
        }
    }
    
    return String(result)  // Convert the array of characters back to a string
}

// Example usage
let input = "454793"
let output = dashInsert(input)
print(output)  // Output: "4547-9-3"
