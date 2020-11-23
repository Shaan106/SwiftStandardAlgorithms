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
        var result:[Int] = []
        
        while sortArray1.count > 0 && sortArray2.count > 0 {
            
            if sortArray1[0] <= sortArray2[0] {
                result.append(sortArray1[0])
                sortArray1 = Array( sortArray1.dropFirst() )
            }else{
                result.append(sortArray2[0])
                sortArray2 = Array( sortArray2.dropFirst() )
            }
            
        }
        
        if sortArray1.count != 0 {
            result.append(contentsOf: sortArray1)
        }else if sortArray2.count != 0 {
            result.append(contentsOf: sortArray2)
        }
        
    return result
    }
    
    //mergeSort
    
    func mergeSort(data:[Int]) -> [Int] {
        if data.count <= 1{
            return data
        }else {
            let firstArray = data.prefix( (data.count)/2 )
            let secondArray = data.suffix( (data.count) - (data.count)/2 )
            return merge( data1: mergeSort(data: Array(firstArray)), data2: mergeSort(data: Array(secondArray)) )
        }

    }
    
    //quick sort - from repl
    
    func quickSort(unsortedArray: [Int]) -> [Int] {

      if unsortedArray.count <= 1 {
        return unsortedArray
      }else{
        
        let pivot = unsortedArray[0]
        var rightArray = [Int]()
        var leftArray = [Int]()

        for i in 1...(unsortedArray.count-1) {
          if unsortedArray[i] >= pivot {
            rightArray.append(unsortedArray[i])
          }else{
            leftArray.append(unsortedArray[i])
          }
        }

        var finalArray = [Int]()

        finalArray.append(contentsOf: quickSort(unsortedArray: leftArray))
        finalArray.append(pivot)
        finalArray.append(contentsOf: quickSort(unsortedArray: rightArray))

        return finalArray
      }
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        
        if data.count == 0{
            return []
        }
        
        var outputArray = data
        
        let dataLength = outputArray.count
        
        for i in 1...(dataLength - 1) {
            
            let currentNumber = outputArray[i]
            
            var position = i
            
            while position > 0 && outputArray[position - 1] > currentNumber {
                
                outputArray[position] = outputArray[position-1]
                position = position - 1
                
            }
            
            outputArray[position] = currentNumber
            
        }
        
        return outputArray
    }
    
}
