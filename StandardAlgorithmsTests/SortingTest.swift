//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Yadav, Aasmaan (SPH) on 13/11/2020.
//

import XCTest

// cmd + b to build, cmd + u to test

class SortingTest: XCTestCase {
    
    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        
        //arrange
        let sorting  = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result,expected)
    }
    
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
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
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
    
}
