//
//  Letter Count.swift
//  
/*
 *  Letter Count I                                                                      *
 *  Have the function LetterCountI(str) take the str parameter being passed and return  *
 *  the first word with the greatest number of repeated letters. For example:           *
 *  "Today, is the greatest day ever!" should return greatest because it has 2 e's      *
 *  (and 2 t's) and it comes before ever which also has 2 e's. If there are no words    *
 *  with repeating letters return <b>-1</b>. Words will be separated by spaces.         *

 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func letterCount(_ string: String) -> String {
    var result = ""
    var words = string.split(separator: " ")
    var maxRepeats = 0
    var wordWithMaxRepeats = "-1"
    
    for word in words {
        
        let counts = word.reduce(into: [:]) { partial, letter in
            partial[letter, default: 0] += 1
        }
        let repeats = counts.values.filter { $0 > 1}.reduce(0, +)
        
        if repeats > maxRepeats {
            maxRepeats = repeats
            wordWithMaxRepeats = String(word)
        }
    }
        
    return wordWithMaxRepeats
}

print(letterCount("Today, is the greatest day ever!"))
