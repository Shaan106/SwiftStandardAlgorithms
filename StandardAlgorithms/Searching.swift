//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Aasmaan Yadav on 22/11/20.
//

import Foundation

class Searching {
    
    //linearSearch
    
    //returning -1 signifies that the value was not found in the data
    
    func linearSearch(data: [Int], findValue: Int) -> Int {
        
        if data.count == 0{
            return -1
        }
        
        for i in 0...(data.count-1) {
            if findValue == data[i] {
                return i+1
            }
        }
        return -1
    }
    
    //binary search
    
    func binarySearch(data: [Int], findValue: Int) -> Bool {
        
        if data.count == 0{
            return false
        }
        
        let midValue = data[data.count/2]
        
        if midValue == findValue {
            
            return true
            
        } else if midValue > findValue {
            
            return binarySearch(data: Array( data.prefix( data.count/2 ) ), findValue: findValue)
            
        } else if midValue < findValue {
            
            return binarySearch(data: Array( data.suffix( (data.count - data.count/2) - 1 ) ), findValue: findValue)
            
        }
        
        return false
        
    }
}

