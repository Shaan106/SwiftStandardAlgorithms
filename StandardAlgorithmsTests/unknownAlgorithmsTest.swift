//
//  unknownAlgorithmsTest.swift
//  StandardAlgorithmsTests
//
//  Created by Yadav, Aasmaan (SPH) on 18/11/2020.
//

import XCTest

class unknownAlgorithmsTest: XCTestCase {

    //problem 1
  
    func testSumOfFirstAndLastWithIntegerArrayReturnsInteger() {
        //arrange
        let unknownAlgorithm = Unknown()
        let inputData = [1,2,3,4]
        let expected = 5
        
        //act
        let result = unknownAlgorithm.sumOfFirstAndLast(array: inputData)
        
        //assert
        XCTAssertEqual(expected, result)
    }
    
    func testSumOfFirstAndLastWithMultipleIntegerArraysReturnsIntegers() {
        //arrange
        let unknownAlgorithm = Unknown()
        let dataArray = [(inputArray: [3], expected: 6),
                         (inputArray: [], expected: 0),
                         (inputArray: [6,5,3,6,7,1,3,5,4], expected: 10),
                         (inputArray: [3,54,23], expected: 26)]
        //act
        //assert
        for data in dataArray {
            let result = unknownAlgorithm.sumOfFirstAndLast(array: data.inputArray)
            XCTAssertEqual(data.expected, result)
        }
    }
    
    //problem2
    
    func testFindModalValueWithIntegerArrayReturnsInteger () {
        //arrange
        let unknownAlgorithm = Unknown()
        let inputData = [1,2,3,4,4,44,5666,78,8,53,4,6,3,4,4,6,2]
        let expected: Double = 4
        
        //act
        let result = unknownAlgorithm.findModalValue(array: inputData)
        
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testFindModalValueWithIntegerArraysReturnsIntegers () {
        //arrange
        let unknownAlgorithm = Unknown()
        let dataArray = [(inputArray: [3,3,3,3,3,3,54,56,6,3,31,6,64,3,3,5,6,7,3,6], expected: 3),
                        (inputArray: [], expected: 0),
                        (inputArray: [6,5,3,6,7,1,9,5,4], expected: 5.5),
                        (inputArray: [3,54,23], expected: Double(3+54+23)/Double(3))]
        //act
        //assert
        for data in dataArray {
            let result = unknownAlgorithm.findModalValue(array: data.inputArray)
            XCTAssertEqual(data.expected, result)
        }
    }
    

}
