//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Yadav, Aasmaan (SPH) on 13/11/2020.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var sortArray = data
        
        while sortArray.count > 1 {
            
            var didSort = false
            
            for i in 1...(sortArray.count-1) {
                print(sortArray)
                
                if sortArray[i-1] > sortArray[i] {
                    
                    let temp = sortArray[i-1]
                    sortArray[i-1] = sortArray[i]
                    sortArray[i] = temp
                    didSort = true
                    

                }
            }
            if didSort == false {
                return sortArray
            }
        }
    
    return sortArray
    }
}
