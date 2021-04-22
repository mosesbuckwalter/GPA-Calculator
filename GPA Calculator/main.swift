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
var GPAValuesString = pairs.map { $0 == "CP A" ? "4" : $0 }
print(GPAValuesString)
let GPAValues = GPAValuesString.compactMap { Int($0) }
print(GPAValues)

let GPAValues2 = [4, 4, 4, 4, 4.5, 4.5, 4.5, 4.5, 5, 5, 4.5, 4.5, 4.5, 4, 4, 3, 5, 4.5, 4.5, 4]

let Sum = GPAValues.reduce(0, +)
let GPASum = Sum
let GPANumber = GPAValues.count
var GPA:Double=(Double(GPASum)/Double(GPANumber))
print(GPA)


