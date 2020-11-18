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
    func findModalValue(array: [Int]) -> Int {
        var valueDict = [0:0]
        return 1
    }
    
}
