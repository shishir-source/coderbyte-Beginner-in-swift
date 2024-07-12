//
//  vowelCountr.swift
//  
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func vowelCount(_ string: String) -> Int {
    let vowels = ["a", "e", "i", "o"]
    let stringArr = string.lowercased()
    
    var sum = 0
    for char in stringArr {
        if vowels.contains(String(char)) {
            sum += 1
        }
    }
    
    return sum
}

print(vowelCount("hello"))
