//
//  offLineMinimum.swift
// 
/*
 *  OffLine Minimum                                                                     *
 *  Using the JavaScript language, have the function OffLineMinimum(strArr) take the    *
 *  strArr parameter being passed which will be an array of integers ranging from       *
 *  1...n and the letter "E" and return the correct subset based on the following       *
 *  rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] *
 *  where the I's stand for integers and the E means take out the smallest integer      *
 *  currently in the whole set. When finished, your program should return that new set  *
 *  with integers separated by commas. For example: if strArr is                        *
 *  ["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5.    *
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func offLineMinimum(_ strArr: [String]) -> String {
    
    var collectedIntegers = [Int]()
    var result = [Int]()
    
    for element in strArr {
        if element == "E" {
            if let minElement = collectedIntegers.min() {
                result.append(minElement)
                if let index = collectedIntegers.firstIndex(of: minElement) {
                    collectedIntegers.remove(at: index)
                }
            }
        } else if let number = Int(element) {
            collectedIntegers.append(number)
        }
    }
    
    return result.compactMap { String($0) }.joined(separator: ",")
}

print(offLineMinimum(["5","4","6","E","1","7","E","E","3","2"]))
