//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Yadav, Aasmaan (SPH) on 13/11/2020.
//

import Foundation

class Sorting {
    
    //bubbleSort
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
    
    
    //mergeSort
    func merge(data1:[Int], data2:[Int]) -> [Int] {
        var sortArray1 = data1
        var sortArray2 = data2
        var res:[Int] = []
        
        var merged = false
        
        while merged == false {
            if data1[0] >= data2[0] {
                res.append(data1[0])
            }else{
                res.append(data2[0])
            }
        }
        
        return res
    }
}
