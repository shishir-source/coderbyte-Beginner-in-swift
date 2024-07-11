//
//  Power of two.swift
//  
//
//  Created by Shishir Ahmed on 12/7/24.
//

import Foundation


func powerOftwoSum(_ num: Int) -> String {
    if num <= 0 {
        return "false"
    }
    
    var n = num
    while n > 1{
        if n % 2 != 0 {
            return "false"
        }
        
        n /= 2
    }
    
    return "true"
}

print(powerOftwoSum(16))
