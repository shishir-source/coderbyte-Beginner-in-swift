//
//  Find Palindrome.swift
//  
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func findPalindrom(_ string: String) -> Bool {
    let allowedChar = CharacterSet.alphanumerics.union(CharacterSet.whitespaces)
    let filterSet = string.filter{ allowedChar.contains($0.unicodeScalars.first!) }
    
    var newString = string.reversed()
    
    return string == String(newString)
}

print(findPalindrom("121"))
