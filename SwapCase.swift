//
//  SwapCase.swift
//  
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func swapCase(_ str: String) -> String {
    var swappedStr = ""
    
    for char in str {
        
        if char.isUppercase {
            swappedStr += char.lowercased()
        }else if char.isLowercase {
            swappedStr += char.uppercased()
        }else{
            swappedStr += String(char)
        }
        
    }
    
        
    return swappedStr
}

print(swapCase("Hello World"))
