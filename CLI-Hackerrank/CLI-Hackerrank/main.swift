//
//  main.swift
//  CLI-Hackerrank
//
//  Created by Annie Tung on 4/20/17.
//  Copyright © 2017 Annie Tung. All rights reserved.
//

import Foundation
// readLine -> input for the console

/* Solve me first: code that prints the sum
 https://www.hackerrank.com/challenges/solve-me-first */

func solveMeFirst() {
    // read integers line by line
    var a = Int(readLine()!)!
    var b = Int(readLine()!)!
    
    // Hint: Type print(a + b) below
    print(a + b)
}

/* Given an array of  integers, can you find the sum of its elements?
 https://www.hackerrank.com/challenges/simple-array-sum?h_r=next-challenge&h_v=zen
 Input:
 6
 1 2 3 4 10 11
 Output: 31 */

func simpleArraySum() {
    // number of elements
    let n = Int(readLine()!)!
    
    // read array and map the elements to integer
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    // find and print the sum of array
    let sum = arr.reduce(0) { (result, n) -> Int in
        result + n
    }
    print(sum)
}

/* Compare the triplets
 https://www.hackerrank.com/challenges/compare-the-triplets?h_r=next-challenge&h_v=zen
 Input:
 5 6 7
 3 6 10
 Output:
 1 1 */

func compareTheTriplets() {
    var aScore: Int = 0
    var bScore: Int = 0
    let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    let b = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    for element in 0..<a.count {
        if a[element] > b[element] {
            aScore += 1
        }
        if a[element] < b[element] {
            bScore += 1
        }
    }
    print("\(aScore) \(bScore)")
}

/*You are given an array of integers of size . You need to print the sum of the elements in the array, keeping in mind that some of those integers may be quite large.
 https://www.hackerrank.com/challenges/a-very-big-sum?h_r=next-challenge&h_v=zen  
 Input:
 5
 1000000001 1000000002 1000000003 1000000004 1000000005
 Output: 
 5000000015 */

func veryBigSum() {
    let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

    let sum = arr.reduce(0,+)
    print(sum)
}

while true {
    print("Enter a function")
    if let functionCall = readLine() {
        print("Enter inputs")
        switch functionCall {
        case "first":
            solveMeFirst()
        case "simple":
            simpleArraySum()
        case "compare":
            compareTheTriplets()
        default:
            print("Nothing matches \(functionCall)")
        }
    }
}
simpleArraySum()
