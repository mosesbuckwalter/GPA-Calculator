//
//  main.swift
//  GPA Calculator
//
//  Created by Moses Buckwalter on 4/19/21.
//
import Foundation
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
let GPAValues = GPAValuesString.compactMap { Int($0) }
let Sum = GPAValues.reduce(0, +)
let GPASum = Sum
let GPANumber = GPAValues.count
var GPA:Double=(Double(GPASum)/Double(GPANumber))

print(GPAValuesString)
print(GPAValues)
print(GPA)


