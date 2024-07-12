//
//  Second Great Low.swift
//
/*
 *  Second Great Low                                                                    *
 *  Using the JavaScript language, have the function SecondGreatLow(arr) take the array *
 *  of numbers stored in arr and return the second lowest and second greatest numbers,  *
 *  respectively, separated by a space. For example: if arr contains                    *
 *  [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty and     *
 *  will contain at least 2 numbers. It can get tricky if there's just two numbers!     * 
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func secondGreatLow(_ arr: [Int]) -> String {
    
    let uniqueArr = Array(Set(arr))
    
    let sortedArray = uniqueArr.sorted()
    
    if sortedArray.count == 2 {
        return "\(sortedArray[1])  \(sortedArray[0]))"
    }
    
    let secondLowest = sortedArray[1]
    let secondGreatest = sortedArray[sortedArray.count - 2]
    
    return "\(secondLowest) \(secondGreatest)"
}

print(secondGreatLow([7,7,12,98,106]))
