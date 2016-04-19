//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Constant
let maximumNumberOfLoginAttempts = 10

//Variable
var currentLoginAttempt = 0

//Declear multiple variables in a line
var x = 0.0, y = 0.0, z = 0.0

//Declear a type
var welcomeMessage: String

//Declear a variable 
welcomeMessage = "Hello"

//Declear multiple variable types in a line
var red, green, blue: Double

//Naming Constant and variable
let π = 3.14159
// Once you've decleared a constant or variable of a certain type, you can't redeclear it again with the same name, or change it to store values of a different type. Nor can you change a constant into a variable or a variable into a constant.

//Change the value of an existing variable to another value of a compatible type
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour"

//print a value
print(friendlyWelcome)

//X to the power of Y
var threeToThePowerOfTen : Double
threeToThePowerOfTen = 3e10


//Integer Bounds
let minValue = UInt8.min
let maxValue = UInt8.max

//Integer Convertion
//Minimum of UInt8 can only be 0, therefore it is impossible to set it to -1
//let connotBeNagative : UInt8 = -1
//let tooBig: Int8 = Int8.max + 1

//Integer Convertion
//Converting one: UInt8 to UInt16
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Integer and Floating-Point Coversion
//Need to convert int to double inorder for them to add together
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

//integerPi equals 3, and is inferred to be of type Int
let integerPi = Int(pi)

//Type Aliases: type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword (type的同义词）
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
//maxAmplitudeFound is now 0

// Tuples: 
// http404Error is of type (Int, String), and euqals (404, "Not Found")
let http404Error = (404, "Not Found")

//Decompose a tuple;s contents into seperate constants or variables
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

//If you only need some of the tuple's values, ignore parts of the tuple with an underscore (_) when you decompose the tuple:
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

//Alternative, we can use the index of the tuple to access the element in it
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

//You can name the individual elements in a tuple when the tuple is defined:
let http200Status = (statusCode: 200, description: "OK")

//If you name the elements in a tuple, you can use the element names to access the values of those elements:
print("The status code is \(http200Status.statusCode)")
print("THe status message is \(http200Status.description)")

/* Optionals: you use optionals in situations where a value may be absent. An optional says:
    - There is a value, and it equals x
    or 
    - There isn't a value at all */

/* Here's an example of how optionals can be used to cpe with the absence of a value. Swift's Int type has an initializer which tries to convert a String value into an Int value. However, not every string can be converted into an integer. The string "123" can be converted into the numeric value 123, but the string "hello, world" does not have an obvious numeric value to convert to. */
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

// nil: you set an optional variable to a valueless state by assigning it the specail value nil:
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
// nil can not be used with nonoptional constants and variables. If a constatn or variable in your code needs to work with the absence of a value under certain conditions, always declare it as an optional value of the apporiate type.


var surveyAnswer: String?
// surveryAnswer is automatically set to nil

// If Statements and Forced Unwrapping
if convertedNumber != nil{
    print("convertedNumber contains some integer value.")
}
if convertedNumber != nil{
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

// Optional Binding: you use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action.
if let actualNumber = Int(possibleNumber) {
    print("\" \(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\" \(possibleNumber)\" could not be converted to an integer")
}


// Implicitly Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String! = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString


// You can still treat an implicitly unwrapped optional like a normal optional, to check if it contains a value:
if assumedString != nil{
    print(assumedString)
}

// You can also use an implicitly unwrapped optional with optional binding, to check and unwrap its value in a single statement:
if let definiteString = assumedString {
    print(definiteString)
}

// Error Handling
// in contrast to optionals, which can use the presence or absemce of a value to communicate success or failure of a function, error handling allows you to determine the underlying cause of failure, and, if necessary, propagate the error to another part of your program.
func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

// Debugging with Assertions
let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")
// this cause the assertion to trigger, because age is not >= 0
let a = 5



//1















