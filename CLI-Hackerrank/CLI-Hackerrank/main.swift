//
//  main.swift
//  CLI-Hackerrank
//
//  Created by Annie Tung on 4/20/17.
//  Copyright © 2017 Annie Tung. All rights reserved.
//

import Foundation
// readLine -> input for the console

// create a dictionary to call later
var funk: [String:()->Void] = [:]

/* Solve me first: code that prints the sum
 https://www.hackerrank.com/challenges/solve-me-first */

func solveMeFirst() {
    // read integers line by line
    var a = Int(readLine()!)!
    var b = Int(readLine()!)!
    
    // Hint: Type print(a + b) below
    print(a + b)
}
// hold a reference to the function
funk["solveMeFirst"] = solveMeFirst

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
funk["simpleArraySum"] = simpleArraySum

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
funk["compareTheTriplets"] = compareTheTriplets

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
funk["veryBigSum"] = veryBigSum

/* Given a square matrix of size N X N, calculate the absolute difference between the sums of its diagonals.
 https://www.hackerrank.com/challenges/diagonal-difference
 Input:
 [[11 2 4],
 [4 5 6],
 [10 8 -12]]
 Output:
 15 */

func findAbsoluteDifference() {
    // read the integer n
    let n = Int(readLine()!)!
    
    // declare 2d array
    var arr: [[Int]] = []
    
    var sumOne = 0
    var sumTwo = 0
    
    // read array row-by-row
    for _ in 0..<n {
        arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
    }
    for num in 0..<arr.count {
        sumOne += arr[num][num]
        sumTwo += arr[num][arr.count - 1 - num]
    }
    print(abs(sumOne - sumTwo))
}
funk["absoluteDifference"] = findAbsoluteDifference

while true {
    print("Enter a function, choices are: ", terminator: "")
    for k in funk.keys {
        print(k, terminator: " ")
    }
    print()
    
    if let functionName = readLine(),
        let function = funk[functionName] {
        print("Enter input")
        function()
    }
    else {
        print("That's not a valid function")
    }
}
