//
//  Create Ex Oh.swift
//
/*
 *  Ex Oh                                                                               *
 *  Using the JavaScript language, have the function ExOh(str) take the str parameter   *
 *  being passed and return the string true if there is an equal number of x's and o's, *
 *  otherwise return the string false. Only these two letters will be entered in the    *
 *  string, no punctuation or numbers. For example: if str is "xooxxxxooxo" then the    *
 *  output should return false because there are 6 x's and 5 o's.                       *

 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func findExOh(_ str: String) -> String {
    let newarr = str.lowercased()
    if newarr.count % 2 == 1 {
        return "false"
    }else{
        let arr = Array(newarr)
        var xCount = 0
        for x in arr {
            if x == "x" {
                xCount += 1
            }
        }
        
        if xCount == arr.count / 2 {
            return "true"
        }else{
            return "false"
        }
    }
}

print(findExOh("xooxxxxooxoo"))
