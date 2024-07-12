//
//  SimpleAdding.swift
//  
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation

func simpleAdding(_ num: Int) -> Int {
    guard num>0 && num < 1000 else {
        return -1
    }
    
    var sum = 0
    
    for i in 1...num{
        sum += i
    }
    
    return sum
}

print(simpleAdding(500))
