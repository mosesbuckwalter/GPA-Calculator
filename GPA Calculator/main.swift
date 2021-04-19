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
            let numbers = try String(contentsOfFile: path).components(separatedBy: "/n")
            return numbers
    }
}

let "CP A" = 4
let "CP B" = 3
let "CP C" = 2
let "CP D" = 1
let "Career A" = 4
let "Career B" = 3
let "Career C" = 2
let "Career D" = 1
let "Honors A" = 4.5
let "Honors B" = 3.5
let "Honors C" = 2.5
let "Honors D" = 1.5
let "AP A" = 5
let "AP B" = 4
let "AP C" = 3
let "AP D" = 2
let "AP+ A" = 5.5
let "AP+ B" = 4.5
let "AP+ C" = 3.5
let "AP+ D" = 2.5
struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
struct GPA {
    let "AP+", "AP", "Honors", "CP", "Career": Double
    init(AP+: Double, AP: Double, Honors: Double, CP: Double, Career: Double) {
        self.AP+   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
