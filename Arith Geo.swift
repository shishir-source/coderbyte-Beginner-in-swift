//
//  Arith Geo.swift
//  

/*
 *  Arith Geo                                                                            *
 *  Using the JavaScript language, have the function ArithGeo(arr) take the array of    *
 *  numbers stored in arr and return the string "Arithmetic" if the sequence follows    *
 *  an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If   *
 *  the sequence doesn't follow either pattern return -1. An arithmetic sequence is     *
 *  one where the difference between each of the numbers is consistent, where as in a   *
 *  geometric sequence, each term after the first is multiplied by some constant or     *
 *  common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric                        *
 *  example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not  *
 *  be entered, and no array will contain all the same elements.                        
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func ArithGeo(_ arr: [Int]) -> String {
    
    guard arr.count > 1 else { return "-1"}
 
    let arithDifference = arr[1] - arr[0]
    var isArrithmatic = true
    
    for i in 1..<arr.count {
        if arr[i] - arr[i-1] != arithDifference {
            isArrithmatic = false
            break
        }
    }
    
    if isArrithmatic {
        return "Arrithmatic"
    }
    
    if arr[0] == 0 {return "-1"}
    let geoRatio = arr[1] / arr[0]
    
    var isGeomatric = true
    for i in 1..<arr.count {
        if arr[i - 1] == 0 || arr[i] / arr[i - 1] != geoRatio {
            isGeomatric = false
            break
        }
    }
 
    if isGeomatric {
        return "Geomatric"
    }
    
    return "-1"
}
