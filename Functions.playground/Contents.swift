//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Defining and calling a fucntion 
func sayHello(personName: String) ->String{
    let greeting = "Hello, " + personName + "!"
    return greeting
}
print(sayHello("Anna"))

// functions with multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
        currentMin = value
    } else if value > currentMax {
        currentMax = value
        }
    }
    return (currentMin, currentMax)
}

minMax([])

// Make the code make sense by specifying external parameter names
func sayHello(person: String, _ anotherPerson: String) ->String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello("Bill", "Ted"))

// Variadic Parameters
func arithmeticMean(numbers: Double...) ->Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1,2,3,4,5)

// In-Out Parameters
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
someInt
anotherInt

// Function type
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(a: Int, _ b: Int) ->Int {
    return a * b
}

// using function type
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

// Function types as parameter Types
func printMathResult(mathFunction: (Int, Int) ->Int, _ a: Int, _ b: Int){
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
printMathResult(multiplyTwoInts, 3, 5)

// Function Types as Return Types
func stepForward(input: Int) ->Int {
    return input + 1
}
func stepBackward(input: Int) ->Int {
    return input - 1
}
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}
var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)
print("Counting to zero")
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")










