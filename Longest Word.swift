//
//  Longest Word.swift
//
/*
 *  Longest Word                                                                        *
 *  Using the JavaScript language, have the function LongestWord(sen) take the sen      *
 *  parameter being passed and return the largest word in  the string. If there are     *
 *  two or more words that are the same length,  return the first word from the string  *
 *  with that length. Ignore punctuation and assume sen will not be empty.              *

 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func longestWord(_ string: String) -> String {
    
    var result = ""
    
    let allowedChar = CharacterSet.alphanumerics.union(CharacterSet.whitespaces)
    let filterSet = string.filter{ allowedChar.contains($0.unicodeScalars.first!) }
    
    var newArr = filterSet.split(separator: " ")
    
    for i in 0...newArr.count {
        if i < newArr.count-1 {
            if newArr[i].count > newArr[i + 1].count {
                if result != String(newArr[i]) {
                    result = String(newArr[i])
                }
            }
        }
    }
    
    return ""
}

print(longestWord("Today, /123125!is the greatest day ever!"))
