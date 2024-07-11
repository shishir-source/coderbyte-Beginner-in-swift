//
//  MeanMode.swift
//  
/*
 *  Have the function MeanMode(arr) take the array of numbers stored in arr and         *
 *  return 1 if the mode equals the mean, 0 if they don't equal each other              *
 *  (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)).     *
 *  The array will not be empty, will only contain positive integers, and will not      *
 * contain more than one mode.
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func meanMode(_ arr: [Int]) -> Int {
    
    var result = 0
    let sum = arr.reduce(0, +)
    
    let mean = Double(sum) / Double(arr.count)
    
    var frequencyDict = [Int: Int]()
    
    for num in arr {
        frequencyDict[num, default: 0] += 1
    }
    
    var mode = arr[0]
    var maxFrequency = 0
    
    for (number, frequency) in frequencyDict {
        if frequency > maxFrequency {
            maxFrequency = frequency
            mode = number
        }
    }
    
    if mean == Double(mode) {
        return 1
    }else {
        return 0
    }
    
}

print(meanMode([5,3,3,3,1]))
