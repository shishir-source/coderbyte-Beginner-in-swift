//
//  Check Nums.swift
//  
/*
 *  Using the JavaScript language, have the function CheckNums(num1,num2) take both     *
 *  parameters being passed and return the string true if num2 is greater than num1,    *
 *  otherwise return the string false. If the parameter values are equal to each other  *
 *  then return the string -1
 */
//
//  Created by Shishir Ahmed on 11/7/24.
//

import Foundation

func checkNums(_ num1: Int, _ num2: Int) -> String {
    
    if num2 > num1 {
        return "true"
    }else if num1 == num2 {
        return "-1"
    }
    return "false"
}
