//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Comparing Classes and Structures
// In common
// Define properties to store values
// Define subscripts to provide access to their values using subscript syntax 
// Define initializers to set up their initial state
// be extended to expand their initial state
// Conform to protocals to provide standard functionality of a certain kind

// Classes have additional capabilities that structures do not
// Inheritance enables one class to inherit the characteristics of another
// Type casting enables you to check and interpret the type of a class instance at runtime
// Deinitalizers enable an instance of a class to free up any resources it has assigned
// Reference counting allows more than one reference to a class instance

class SomeClass {
    
}

struct SomeStructure {
    
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
print("The width of someResolution is \(someResolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

// Memberwise Initializers for Structure Types
let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd

cinema.width = 2048

print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

enum CompassPoint {
    case North, South, East, West
}

var currentDirection = CompassPoint.West
let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    print("The rembered direction is still .West")
}

// Classes are reference types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

// Itentity operators
// Identical to (===)
// Not identical to (!==)
if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

// Choosing Between Classes and Structures
// You can use both calsses and structures to define custom data type to use as the building blocks of your program's code
// However, structure instances are always passed by value, and calss instances are always passed by reference. This means that they are suited to different kinds of tasks. As you consider the data constructs and functionality that you need for a project, decide whether each data construct should be defined as a class or as a structure

// As a general guidline, consider creating a structure when one or more of these conditions apply:
// The sturcture's primary purpose is to encapsulate a few relatively simple data values
// It is reasonable to expect that the encapsulated values will be copied rather than referenced when you assign or pass around an instance of the structure
// Any properties stored by the structure are themselves value types, whcih would also be expected to be copied rather than referenced
// The structure does not edd to inherit properties or behavior from another existing type

// Examples of good candidates for structures inclu=ude:
    // The size of a geometric shape, perhaps encapsulating a width property and a height property, both of type Double
    // A way to refer to ranges within a series perhaps encapsulating a start property and a length property, both of type Int.
    // A point in a 3D coordinate system, perhaps encapsulating x, y and z properties, each of type Double



