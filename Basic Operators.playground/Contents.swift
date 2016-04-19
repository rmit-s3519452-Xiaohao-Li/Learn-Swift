//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Remainder Operator
9 % 4
// This returns the remainder of 9/4

//If the remainder is a float, it will return the float
8 % 2.5

//Compound Assignment Operators
var a = 1
a += 2
// a is now equals to 3

//Ternary Conditional Operator: the ternary conditional operator is a special operator with three parts, which takes the form question ? answer1 : answer2. It is a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and return its value
let contentHight = 40
let hashHeader = true
let rowHeight = contentHight + (hashHeader ? 50 : 20)
// rowHeigh is equal to 90

//Nil Coalescing Operator: The nil coalesing operator(a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is store inside a.
let defaultColorName = "red"
var userDefinedColorName: String? //defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

userDefinedColorName = "blue"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to "green"

//Range Operators
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range Operator 
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}











