//
//  ThirdGreatest.swift
//  
/*
 *  Third Greatest                                                                      *
 *  Using the JavaScript language, have the function ThirdGreatest(strArr) take the     *
 *  array of strings stored in strArr and return the third largest word within in.      *
 *  So for example: if strArr is ["hello", "world", "before", "all"] your output should *
 *  be world because "before" is 6 letters long, and "hello" and "world" are both 5,    *
 *  but the output should be world because it appeared as the last 5 letter word in     *
 *  the array. If strArr was ["hello", "world", "after", "all"] the output should be    *
 *  after because the first three words are all 5 letters long, so return the last one. *
 *  The array will have at least three strings and each string will only contain        *
 *  letters.                                                                            *
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func thirdGreatest(_ str: [String]) -> String {
    let sortedArr = str.sorted{
        
        if $0.count == $1.count {
            return str.firstIndex(of: $0)! <  str.firstIndex(of: $1)!
        }else {
            return $0.count > $1.count
        }
    }
        
    return sortedArr[2]
}

print(thirdGreatest(["hello", "worl", "befo", "all"]))
