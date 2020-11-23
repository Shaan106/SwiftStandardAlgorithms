//
//  main.swift
//  StandardAlgorithms
//
//  Created by Yadav, Aasmaan (SPH) on 11/11/2020.
//

import Foundation

let choiceToNameDict = [1 : "Linear Search",
                        2 : "Binary Search"]

let choiceToDescriptionDict = [1 : "Algorithm searches array by looking through it one item at a time until it finds the desired value. Array does not need to be sorted.",
                               2 : "Algorithm looks at middle value, if it is the desired value it returns necessary data, otherwise it divides the original array depending on whether the desired value was greater than or smaller than the middle value. The algorithm repeatedly divides the array and checks the middle value until the value is found, or the array size = 0. **Array needs to be sorted for this algorithm**" ]

//do best, average and worst case scenarios
let choiceToBigOComplexity = [1 : "O(n)",
                              2 : "O(log n)"]

func menu () {
    print(  """
            Swift Standard Algorithms.
            
            Enter the number that is given next to an algorithm to learn more about it

            1. Linear Search
            2. Binary Search
            """)
    
    if let userChoice = readLine() {
        if let userChoiceInt = Int(userChoice) {
            
            if userChoiceInt > choiceToNameDict.count {
                print("\nYou have entered an invalid choice, please try again \n")
                menu()
            }
            
            detailedExplanation(choice: userChoiceInt)
                    
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
        print("Name: ", name)
    }
    if let description = choiceToDescriptionDict[choice] {
        print("Description: ", description)
    }
    if let timeComplexity = choiceToBigOComplexity[choice] {
        print("Big O Time Complexity: ", timeComplexity)
    }
    print("---------------------------------------------------------------------------------------------------------------------------------------------------")
}

menu()
