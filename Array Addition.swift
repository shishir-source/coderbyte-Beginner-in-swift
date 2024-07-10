//
//  Array Addition.swift
//  
/*
 *  Array Addition I                                                                    *
 *  Using the JavaScript language, have the function ArrayAdditionI(arr) take the array *
 *  of numbers stored in arr and return the string true if any combination of numbers   *
 *  in the array can be added up to equal the largest number in the array, otherwise    *
 *  return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the      *
 *  output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, *
 *  will not contain all the same elements, and may contain negative numbers.
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func arrayAddition(_ arr: [Int]) -> Bool {
    var sortedArray = arr.sorted()
    let last = sortedArray.removeLast()
    
    let sum = sortedArray.filter{$0 != last}.reduce(0, +)
    
    return last >= sum
}

print(arrayAddition([4, 6, 23, 10, 3]))
