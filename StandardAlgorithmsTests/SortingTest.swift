//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Yadav, Aasmaan (SPH) on 13/11/2020.
//

import XCTest

// cmd + b to build, cmd + u to test
//have to start function name with "test" for it to test

class SortingTest: XCTestCase {
    
    //BUBBLE SORT TESTING
    
    //single input bubble sort testing
    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        
        //arrange
        let sorting  = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result,expected)
    }
    
    //many input bubble sort testing
    func testBubbleSortWithVariousIntegerArraysReturnsEachOneSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]),
                        (data: [1,100,4,3,15], expected: [1,3,4,15,100]),
                        (data: [], expected: [])]
        
        //act
        //assert
        
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    //performance test bubble sort on size n = 5,50,500
    
    func testBubbleSortPerformanceWithIntegerArraysOfSizes5and50and500() {
        let sorting = Sorting()
        
        let dataSizes = [5,50,500]
        
        var testDataOfSizeN = [ 1: [1] ]
        
        for dataSize in dataSizes {
            var tempArray: [Int] = []
            
            for _ in 1...dataSize {
                tempArray.append( Int.random(in: 0...500) )
            }
            
            testDataOfSizeN[dataSize] = tempArray
        }
        
        let choiceOfSizeToTest = 50 //can be 5,50,500
        
        self.measure {
            if let testData = testDataOfSizeN[choiceOfSizeToTest] {
                
                let _ = sorting.bubbleSort(data: testData)
                
            }
        }
        
    }
    
    //MERGE SORT TESTING
    
    //single input merge testing
    func testMergeWithSortedIntegerArrayReturnsMergedArray() {
        //arrange
        let sorting = Sorting()
        let testData1 = [1,4,6,7]
        let testData2 = [1,2,5,9]
        let expected = [1,1,2,4,5,6,7,9]
        
        //act
        let result = sorting.merge(data1: testData1, data2: testData2)
        
        //assert
        XCTAssertEqual(result, expected)
    }
    
    //multiple input merge testing
    
    func testMergeWithVariousSortedIntegerArraysReturnsMergedArrays() {
        //arrange
        let sorting = Sorting()
        let testData = [(data1: [3,7,82,99], data2: [1,2,6,10293],  expected: [1,2,3,6,7,82,99,10293]),
                        (data1: [1,3,6,99,823], data2: [5,8,34],  expected: [1,3,5,6,8,34,99,823]),
                        (data1: [], data2: [],  expected: [])]
        //act
        //assert
        
        for test in testData {
            let result = sorting.merge(data1: test.data1, data2: test.data2)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    //single input merge sort
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let testData = [3,8,4,5,7]
        //let testData = [1,2,3,4,5,6,7]
        let expected = [3,4,5,7,8]
        
        //act
        let result = sorting.mergeSort(data: testData)
        
        //assert
        XCTAssertEqual(result, expected)
    }
    
    //multiple input merge sort
    
    func testMergeSortWithIntegerArraysReturnsSortedArrays() {
        //arrange
        let sorting = Sorting()
        let testData = [(data1: [4,6,2,3,5,54,12,4,2], expected: [2,2,3,4,4,5,6,12,54]),
                        (data1: [6,5,4,3,2,1], expected: [1,2,3,4,5,6]),
                        (data1: [], expected: [])]
        //act
        //assert
        
        for test in testData {
            let result = sorting.mergeSort(data: test.data1)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    //performance test merge sort on size n = 5,50,500
    
    func testMergeSortPerformanceWithIntegerArraysOfSizes5and50and500() {
        let sorting = Sorting()
        
        let dataSizes = [5,50,500]
        
        var testDataOfSizeN = [ 1: [1] ]
        
        for dataSize in dataSizes {
            var tempArray: [Int] = []
            
            for _ in 1...dataSize {
                tempArray.append( Int.random(in: 0...500) )
            }
            
            testDataOfSizeN[dataSize] = tempArray
        }
        
        let choiceOfSizeToTest = 50 //can be 5,50,500
        
        self.measure {
            if let testData = testDataOfSizeN[choiceOfSizeToTest] {
                
                let _ = sorting.mergeSort(data: testData)
                
            }
        }
        
    }
    
    //QUICK SORT TESTING
    
    //quick sort
    
    func testQuickSortWithIntegerArraysReturnsSortedArrays() {
        
        //arrange
        let sorting = Sorting()
        let testData = [(data1: [4,6,2,3,5,54,12,4,2], expected: [2,2,3,4,4,5,6,12,54]),
                        (data1: [6,5,4,3,2,1], expected: [1,2,3,4,5,6]),
                        (data1: [], expected: [])]
        //act
        //assert
        
        for test in testData {
            let result = sorting.quickSort(unsortedArray: test.data1)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    //performance test quick sort on size n = 5,50,500
    
    func testQuickSortPerformanceWithIntegerArraysOfSizes5and50and500() {
        let sorting = Sorting()
        
        let dataSizes = [5,50,500]
        
        var testDataOfSizeN = [ 1: [1] ]
        
        for dataSize in dataSizes {
            var tempArray: [Int] = []
            
            for _ in 1...dataSize {
                tempArray.append( Int.random(in: 0...500) )
            }
            
            testDataOfSizeN[dataSize] = tempArray
        }
        
        let choiceOfSizeToTest = 50 //can be 5,50,500
        
        self.measure {
            if let testData = testDataOfSizeN[choiceOfSizeToTest] {
                
                let _ = sorting.quickSort(unsortedArray: testData)
                
            }
        }
        
    }
    
    //INSERTION SORT TESTING
    
    //insertion sort
    
    func testInestionSortWithIntegerArraysReturnsSortedArrays() {
        //arrange
        let sorting = Sorting()
        let testData = [(data1: [4,6,2,3,5,54,12,4,2], expected: [2,2,3,4,4,5,6,12,54]),
                        (data1: [6,5,4,3,2,1], expected: [1,2,3,4,5,6]),
                        (data1: [], expected: [])]
        //act
        //assert
        
        for test in testData {
            let result = sorting.insertionSort(data: test.data1)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    //performance test bubble sort on size n = 5,50,500
    
    func testInsertionSortPerformanceWithIntegerArraysOfSizes5and50and500() {
        let sorting = Sorting()
        
        let dataSizes = [5,50,500]
        
        var testDataOfSizeN = [ 1: [1] ]
        
        for dataSize in dataSizes {
            var tempArray: [Int] = []
            
            for _ in 1...dataSize {
                tempArray.append( Int.random(in: 0...500) )
            }
            
            testDataOfSizeN[dataSize] = tempArray
        }
        
        let choiceOfSizeToTest = 50 //can be 5,50,500
        
        self.measure {
            if let testData = testDataOfSizeN[choiceOfSizeToTest] {
                
                let _ = sorting.insertionSort(data: testData)
                
            }
        }
        
    }
    
}
