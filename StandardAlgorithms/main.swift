//
//  main.swift
//  StandardAlgorithms
//
//  Created by Yadav, Aasmaan (SPH) on 11/11/2020.
//

import Foundation

let choiceToNameDict = [1 : "Linear Search",
                        2 : "Binary Search",
                        3 : "Bubble Sort",
                        4 : "Merge Sort",
                        5 : "Insertion Sort",
                        6 : "Quick Sort" ]

let choiceToDescriptionDict = [1 : "Algorithm searches array by looking through it one item at a time until it finds the desired value. Array does not need to be sorted.",
                               2 : "Algorithm looks at middle value, if it is the desired value it returns necessary data, otherwise it divides the original array depending on whether the desired value was greater than or smaller than the middle value. The algorithm repeatedly divides the array and checks the middle value until the value is found, or the array size = 0. **Array needs to be sorted for this algorithm**",
                               3 : "Algorithm passes over the array until it is sorted. Each pass consists of the algorithm going through adjacent pairs of data, swapping them if the data higher up in the array is less than the data lower down in the array.",
                               4 : "Algorithm splits array in half until there are only arrays of size 1 left. Then each array is merged with the array adjacent to it, sorting the items in both arrays into one. **Requires extra memory**",
                               5 : "Algorithm puts first unsorted item into new array (can be done in place) and then takes another unsorted item and places it correctly in the array depending on whether it is larger than or less than the other item(s) in the array. Process repeats until every item is in new array",
                               6 : "Select a value as the pivot (eg the first value). Divide the array into two parts, all the items less than the pivot in one array and all the items larger than the pivot in another array. Repeat this process until all that remains is arrays of size one (can be done in place). Combing these arrays will give you a sorted array" ]

//do best, average and worst case scenarios
let choiceToBigOComplexity = [1 : "O(n)",
                              2 : "O(log n)",
                              3 : "O(n^2)",
                              4 : "O(n log n)",
                              5 : "O(n^2), goes to O(n) if array is nearly sorted",
                              6 : "O(n log n)" ]

let choiceToExampleOfAlgorithm = [ 1 : (data: [1,3,4,5,7,7,9,10,231,542,653,654], searchValue : 542),
                                   2 : (data: [1,3,4,5,7,7,9,10,231,542,653,654], searchValue : 542),
                                   3 : (data: [8,53,213,4,64,2,1,35,54,3,4,5], searchValue : -1),
                                   4 : (data: [8,53,213,4,64,2,1,35,54,3,4,5], searchValue : -1),
                                   5 : (data: [8,53,213,4,64,2,1,35,54,3,4,5], searchValue : -1),
                                   6 : (data: [8,53,213,4,64,2,1,35,54,3,4,5], searchValue : -1)]

func menu () {
    print(  """
            Swift Standard Algorithms.
            
            Enter the number that is given next to an algorithm to learn more about it

            1. Linear Search
            2. Binary Search
            3. Bubble Sort
            4. Merge Sort
            5. Insertion Sort
            6. Quick Sort
            """)
    
    if let userChoice = readLine() {
        if let userChoiceInt = Int(userChoice) {
            
            if userChoiceInt > choiceToNameDict.count {
                print("\nYou have entered an invalid choice, please try again \n")
                menu()
            }else{
                detailedExplanation(choice: userChoiceInt)
            }
                    
        }else{
            print("\nYou have entered an invalid choice, please try again \n")
            menu()
        }
    }else{
        print("\nYou have entered an invalid choice, please try again \n")
        menu()
    }
}


func detailedExplanation(choice: Int) {
    print("---------------------------------------------------------------------------------------------------------------------------------------------------")
    if let name = choiceToNameDict[choice] {
        print("\nName: ", name)
    }
    
    if let description = choiceToDescriptionDict[choice] {
        print("\nDescription: ", description)
    }
    if let timeComplexity = choiceToBigOComplexity[choice] {
        print("\nBig O Time Complexity: ", timeComplexity)
    }
    
    if let exampleData = choiceToExampleOfAlgorithm[choice] {
        
        let sorting = Sorting()
        let searching = Searching()
        var result: Any
        
        print("")
        switch choice {
        case 1:
            print("    Example data:", exampleData.data)
            result = searching.linearSearch(data: exampleData.data, findValue: exampleData.searchValue)
        case 2:
            print("    Example data:", exampleData.data)
            result = searching.binarySearch(data: exampleData.data, findValue: exampleData.searchValue)
        case 3:
            print("    Example data:", exampleData.data)
            result = sorting.bubbleSort(data: exampleData.data)
        case 4:
            print("    Example data:", exampleData.data)
            result = sorting.mergeSort(data: exampleData.data)
        case 5:
            print("    Example data:", exampleData.data)
            result = sorting.insertionSort(data: exampleData.data)
        case 6:
            print("    Example data:", exampleData.data)
            result = sorting.quickSort(unsortedArray: exampleData.data)
        default:
            result = "ERROR"
            print("** ERROR **")
        }
        
        print("    Result: ", result)
    
        
    }
    print("---------------------------------------------------------------------------------------------------------------------------------------------------")
}

menu()
