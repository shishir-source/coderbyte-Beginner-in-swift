//
//  TimeConverter.swift
// 
/*
 *                                                                                      *
 *  Time Convert                                                                        *
 *  Using the JavaScript language, have the function TimeConvert(num) take the num      *
 *  parameter being passed and return the number of hours and minutes the parameter     *
 *  converts to (ie. if num = 63 then the output should be 1:3). Separate the number    *
 *  of hours and minutes with a colon.                                                  *
 *                                                                                      *
 */
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func timeConverter(_ num: Int) -> String {
    
    var hours = num / 60
    var min = num % 60
    
    return "\(hours) : \(min)"
}

print(timeConverter(123))
