//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// the sort method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort(backwards)

// Closure Expression Syntax
reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Inferring Type From Context
reversed = names.sort({s1, s2 in return s1 > s2})
reversed

// Shorthand Argument Names
reversed = names.sort({$0 > $1})

// operator functions
reversed = names.sort(>)

// trailing closure 
reversed = names.sort() {$0 > $1}

// example
let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [16, 58, 510]
let strings = numbers.map {
    (number) -> String in
    var number = number
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

// capturing values
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let incrementByTen = makeIncrementer(forIncrement: 10)

// authclosure 
var customerInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customerInLine.count)

let customerProvider = {
    customerInLine.removeAtIndex(0) }
print(customerInLine.count)

print("Now serving \(customerProvider())!")
print(customerInLine.count)

// same fucntion as above
func serveCustomer(customerProvider: () -> String) {
    print("Now serving \(customerProvider()))!")
}
serveCustomer({customerInLine.removeAtIndex(0)})







