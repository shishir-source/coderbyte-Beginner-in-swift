//
//  Alphabet Soup.swift
//  
/*
 *  Have the function AlphabetSoup(str) take the str string parameter being passed      *
 *  and return the string with the letters in alphabetical order                        *
 *  (ie. hello becomes ehllo). Assume numbers and punctuation symbols will not be       *
 *  included in the string.
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func alphabetSoup(_ str: String) -> String {
    return String(Array(str).sorted())
}
    
print(alphabetSoup("hello"))
