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
var GPAValuesDict: [String : Float] = [
    "CP A": 4,
    "CP B": 3,
    "CP C": 2,
    "CP D": 1,
    "Career A": 4,
    "Career B": 3,
    "Career C": 2,
    "Career D": 1,
    "Honors A": 4.5,
    "Honors B": 3.5,
    "Honors C": 2.5,
    "Honors D": 1.5,
    "AP A": 5,
    "AP B": 4,
    "AP C": 3,
    "AP D": 2,
    "AP+ A": 5.5,
    "AP+ B": 4.5,
    "AP+ C": 3.5,
    "AP+ D": 2.5,
]

let GPAValues = GPAValuesDict.values.map({$0})
let GPASum = GPAValues.reduce(0, +)
let GPANumber = GPAValues.count
var GPA:Double=(Double(GPASum)/Double(GPANumber))

print(pairs)
print(GPAValuesDict)
print(GPAValues)
print(GPASum)
print(GPANumber)
print(GPA)


