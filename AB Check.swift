//
//  AB Check.swift
//
/*  AB Check
  Using the JavaScript language, have the function ABCheck(str) take the str
  parameter being passed and return the string true if the characters a and b are
  separated by exactly 3 places anywhere in the string at least once
  (ie. "lane borrowed" would result in true because there is exactly three characters
  between a and b). Otherwise return the string false.                                */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func ABCheck(_ str: String) -> String {

    let lowerStr = str.lowercased()

    let pattern = "a...b"
    
    do {
        let regex = try NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(location: 0, length: lowerStr.utf16.count)
        if let _ = regex.firstMatch(in: lowerStr, options: [], range: range){
            return "true"
        }else{
            return "false"
        }
    } catch {
        return "false"
    }
    
}

// Example usage
print(ABCheck("lane borrowed")) // Output: true
print(ABCheck("hello world")) // Output: false
print(ABCheck("ab check")) // Output: true
