//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Aasmaan Yadav on 22/11/20.
//

import XCTest

class SearchingTest: XCTestCase {
    
    //LINEAR SEARCH TEST
    
    //linear search test
    func testLinearSearchWithIntegerArraysReturnsIntegersAndLocations() {
        //arrange
        let searching = Searching()
        let testData = [(data: [4,6,2,3,5,54,12,4,2], findValue: 5 ,   expected: 5 ),
                        (data: [6,5,4,3,2,1],         findValue: 81 ,   expected: -1 ),
                        (data: [],                    findValue: 0 ,   expected: -1 ),
                        (data: [3],                   findValue: 3 ,   expected: 1 ),
                        (data: [3],                   findValue: -32 ,   expected: -1 )]
        //act
        //assert
        
        for inputData in testData {
            let result = searching.linearSearch(data: inputData.data, findValue: inputData.findValue)
            XCTAssertEqual(inputData.expected, result)
        }
        
    }
    
    //LINEAR SEARCH PERFORMANCE TESTING
    
    //linear search performance test, n = 5
    
    func testLinearSearchPerformanceWithIntegerArrayWhereSizeIs5() {
        
        let searching = Searching()
        
        let dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        self.measure {
            if let data = dataOfSizeN[5] {
                let _ = searching.linearSearch(data: data.inputArray, findValue: Int.random(in: 0...5))
            }
        }
        
    }
    
    //linear search performance test, n = 50
    
    func testLinearSearchPerformanceWithIntegerArrayWhereSizeIs50() {
        
        let searching = Searching()
        
        var dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        var tempInputArray: [Int] = []
        
        for i in 1...50 {
            tempInputArray.append(i)
        }
        
        dataOfSizeN[50] = ( inputArray: tempInputArray, findValue : 39 )
        
        self.measure {
            if let data = dataOfSizeN[50] {
                let _ = searching.linearSearch(data: data.inputArray, findValue: Int.random(in: 0...50))
            }
        }
    }
    
    //linear search performance test, n = 500
    
    func testLinearSearchPerformanceWithIntegerArrayWhereSizeIs500() {
        
        let searching = Searching()
        
        var dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        var tempInputArray: [Int] = []
        
        for i in 1...500 {
            tempInputArray.append(i)
        }
        
        dataOfSizeN[500] = ( inputArray: tempInputArray, findValue : 39 )
        
        self.measure {
            if let data = dataOfSizeN[500] {
                let _ = searching.linearSearch(data: data.inputArray, findValue: Int.random(in: 0...500))
            }
        }
    }

    //BINARY SEARCH TESTING
    
    //binary search test
    func testBinarySearchWithIntegerArraysReturnsBooleans() {
        //arrange
        let searching = Searching()
        let testData = [(data: [1,2,3,4,5,7,8,9],       findValue: 8,   expected: true ),
                        (data: [1,2,3,4,5,6,7,8,9],     findValue: 2 ,   expected: true ),
                        (data: [],                      findValue: 3,    expected: false),
                        (data: [3,4,7,9,10,32,42],      findValue: 11,   expected: false)]
        //act
        //assert
        
        for inputData in testData {
            let result = searching.binarySearch(data: inputData.data, findValue: inputData.findValue)
            
            XCTAssertEqual(inputData.expected, result)
        }
        
    }
    
    //BINARY SEARCH PERFORMANCE TESTING
    
    //linear search performance test, n = 5
    
    func testBinarySearchPerformanceWithIntegerArrayWhereSizeIs5() {
        
        let searching = Searching()
        
        let dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        self.measure {
            if let data = dataOfSizeN[5] {
                let _ = searching.binarySearch(data: data.inputArray, findValue: Int.random(in: 0...5))
            }
        }
        
    }
    
    //linear search performance test, n = 50
    
    func testBinarySearchPerformanceWithIntegerArrayWhereSizeIs50() {
        
        let searching = Searching()
        
        var dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        var tempInputArray: [Int] = []
        
        for i in 1...50 {
            tempInputArray.append(i)
        }
        
        dataOfSizeN[50] = ( inputArray: tempInputArray, findValue : 39 )
        
        self.measure {
            if let data = dataOfSizeN[50] {
                let _ = searching.binarySearch(data: data.inputArray, findValue: Int.random(in: 0...50))
            }
        }
    }
    
    //linear search performance test, n = 500
    
    func testBinarySearchPerformanceWithIntegerArrayWhereSizeIs500() {
        
        let searching = Searching()
        
        var dataOfSizeN = [5 : ( inputArray: [1,2,3,4,5], findValue: 8 )]
        
        var tempInputArray: [Int] = []
        
        for i in 1...500 {
            tempInputArray.append(i)
        }
        
        dataOfSizeN[500] = ( inputArray: tempInputArray, findValue : 39 )
        
        self.measure {
            if let data = dataOfSizeN[500] {
                let _ = searching.binarySearch(data: data.inputArray, findValue: Int.random(in: 0...500))
            }
        }
    }

}
