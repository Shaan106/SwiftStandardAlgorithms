//
//  unknownAlgorithms.swift
//  StandardAlgorithms
//
//  Created by Yadav, Aasmaan (SPH) on 18/11/2020.
//

import Foundation


class Unknown {
    
    //problem 1
    func sumOfFirstAndLast(array:[Int]) -> Int {
        if array.count <= 0 {
            return 0
        }else if array.count == 1 {
            return array[0]*2
        }else{
            return (array[0] + array[array.count-1])
        }
    }
    
    //problem 2
    func findModalValue(array: [Int]) -> Double {
        var valueDict = [0:0]
        var maxValue = (number: 0, value: 0)
        
        for number in array {
            
            if let previousValue = valueDict[number] {
                valueDict[number] = Int(previousValue) + 1
                let newValue = Int(previousValue) + 1
                
                if newValue > maxValue.value {
                    maxValue.number = number
                    maxValue.value = newValue
                }
                
            }else{
                valueDict[number] = 1
                
                let newValue = 1
                
                if newValue > maxValue.value {
                    maxValue.number = number
                    maxValue.value = newValue
                }
                
            }
        }
        
        var totalOfNumbersWithMaxValue = 0
        var numberOfNumbersWithMaxValue = 0
        
        for item in valueDict {
            if item.value == maxValue.value{
                totalOfNumbersWithMaxValue = totalOfNumbersWithMaxValue + item.key
                numberOfNumbersWithMaxValue = numberOfNumbersWithMaxValue + 1
            }
        }
        
        return  Double(totalOfNumbersWithMaxValue) / Double(numberOfNumbersWithMaxValue)
    }
    
}
