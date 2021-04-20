//
//  main.swift
//  GPA Calculator
//
//  Created by Moses Buckwalter on 4/19/21.
//

import Foundation

print("Hello, World!")
func GPArray() -> Array <String> {
    let path = "/Users/mosesbuckwalter/Developer/Xcode/GPA Calculator/GPA Calculator/gpa.txt"
    do {
        let combined = try String(contentsOfFile: path).components(separatedBy: "")
        return combined
        } catch {
            return [String]()
        }
}

let GPAString = GPArray().joined(separator: "")
let pairs = GPAString.components(separatedBy: "\n")
print(pairs)

let GPAValues = [1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 9.5, 13.5, 12.5, 15.5, 18.5, 35.5, 76.5, 9.5]

let Sum = GPAValues.reduce(0, +)
let GPASum = Sum
print(GPASum)
let GPANumber = GPAValues.count
var GPA:Double=(GPASum/Double(GPANumber))
print(GPA)
