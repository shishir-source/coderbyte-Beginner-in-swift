//
//  Letter Capaitilize.swift
//  
/*
 *  Letter Capitalize                                                                   *
 *  Using the JavaScript language, have the function LetterCapitalize(str) take the     *
 *  str parameter being passed and capitalize the first letter of each word. Words      *
 *  will be separated by only one space.                                                *
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func letterCapitalize(_ string: String) -> String {
    
    let words = string.split(separator: " ")
    
    let capatilizedWords = words.map { word in
        guard let firstChar = word.first else {return ""}
        
        return String(firstChar.uppercased()) + String(word.dropFirst())
    }
    
    return capatilizedWords.joined(separator: " ")
}

print(letterCapitalize("hello world"))
