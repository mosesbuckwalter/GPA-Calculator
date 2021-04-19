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


let (Classtype, lettergrade)

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
struct GPA1 {
    let "AP+", "AP", "Honors", "CP", "Career": Double
    init("AP+": Double, "AP": Double, "Honors": Double, "CP": Double, "Career": Double) {
        self."AP+"   = red
        self."AP" = green
        self."Honors"  = blue
        self."CP"  = blue
        self."Career"  = blue
    }
}
let mygpa = Color(red: 1.0, green: 0.0, blue: 1.0)


struct LetterGrade {
    var a, b, c, d, f
}
struct ClassType {
    var x = 0.0, y = 0.0
}
struct GPA {
    var Class = ClassType()
    var Grade = LetterGrade()
    init() {}
    init(Class: ClassType, Grade: LetterGrade) {
        self.ClassType = ClassType
        self.Grade = Grade
    }
}




let ClassGrade = "[[39.86475483576405,-75.53281903266907], [39.864688955564304,-75.53292632102966], [39.86455719497505,-75.53300142288208], [39.86440072894666,-75.5330228805542], [39.8642689678039,-75.53295850753784], [39.863305456757146,-75.53223967552185], [39.86303369478483,-75.53266882896423]]"

if let data = ClassGrade.data(using: .utf8),
    let jsonArray = try? JSONSerialization.jsonObject(with: data) as? [[Double]] {
    let ClassGradeArray  = jsonArray!.map{CLLocation(Class:$0[0], Grade:$0[1]) }
    print(ClassGradeArray)
}
