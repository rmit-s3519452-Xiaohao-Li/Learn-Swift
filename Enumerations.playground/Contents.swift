//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Enumeration Syntax
//enum CompassPoint {
//    case North
//    case South
//    case East
//    case West
//}
//
//var directionToHead = CompassPoint.West
//switch directionToHead {
//case .North:
//    print("Lots of Planets have a north")
//case .South:
//    print("Watch out for penguins")
//case .East:
//    print("Where the sun rises")
//case .West:
//    print("Where the skies are blue")

//}


// with default
//enum Planet{
//    case Earth
//}

//enum  Planet {
//    case Merrcury
//    case Earth
//}
//
//var somePlanet = Planet.Earth
//switch somePlanet {
//case .Earth:
//    print("Mostly harmless")
//default:
//    print("Not a safe place for humans")
//}

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
productBarcode = .QRCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem). \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

Planet.Earth.rawValue

enum CompassPoint: String {
    case North, South, East, West
}
CompassPoint.North.rawValue

let possible = Planet(rawValue: 7)
// possiblePlanet is of type Planet? and equals Planet.Uranus

let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .Earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a palnet at position \(positionToFind)")
}

// indirect
enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(2))




