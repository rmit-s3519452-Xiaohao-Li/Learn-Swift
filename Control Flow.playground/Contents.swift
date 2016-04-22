//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// For-In Loops
// range of numbers
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10 
// ...
// 5 times 5 is 25

// The sequence being iterated over is a range of numbers from 1 to 5, inclusive, as indicated by the use of closed range operator(...). The value of index is set to the first number in the range(1), and the statements inside the loop are executed. In this case, the loop contains only one statement, which prints an entry from the five-times table for the current value of index. After the statement is executed, the value of index is updated to contain the second value in the range (2), and the print() function is called again. This process continues until the end of the range is reached.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


// Use a for-in loop with an array to iterate over its items.
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// iterate over dictionary 
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// ants have 6 legs
// cats have 4 legs
// spiders have 8 legs

// While Loops
//game example
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or ledder
        square += board[square]
    }
}
print("Game over!")


// repeat-while
// simular to do-while

// Conditional Statements
// If
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

// If, else
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

// If, else if, else
temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.:")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

// Swich
// a switch statement considers a value and compares it against several possible matching patterns. It ten executes an appropriate block of code, based on the first pattern that matches successfully. A switch statement provides an alternative to the if statement for responding to multiple potential states.
// switch some value to consider {
// case value 1:
// respond to value 1
// case value 2, value 3:
// respond to value 2 or 3
// default:
// otherwise, do someting else
// }
let someCharacter: Character = "e"
switch someCharacter {
    case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default: print("\(someCharacter) is not a vowel or a consonant")
}

// tuples in switch
let somePoint = (1, 1)
switch somePoint {
case (0,0):
    print("(0,0) is at the origin")
case(_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case(0, _):
    print("(0, \(somePoint.1)) is on the y-sxis")
case(-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

// value binding in switch
let anotherPoint = (2,0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-asix with an x value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

// Where with switch
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let(x, y) where x == y:
    print("(\(x), \(y)) is one the line x == y")
case let(x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

// Control Transfer Statements
// continue
// break
// fallthrough
// return 
// throw

// Continue
// the continue statement tells a loop to stop what it is doing and start again at the begining of the next iteration through the loop. It says "I am done with the current loop
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
    case "a", "e", "i", "o", "u", " ": continue
    default: puzzleOutput.append(character)
    }
}
print(puzzleOutput)

// Break
// the break statement ends excution of an entire control flow statemnet immediately. The break statement can be used inside a switch statement or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case
let numberSymbol: Character = "0"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "一": possibleIntegerValue = 1
case "2", "二": possibleIntegerValue = 2
case "3", "三": possibleIntegerValue = 3
case "4", "四": possibleIntegerValue = 4
default: break
}

if let integerValue = possibleIntegerValue
{
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}

// Fallthrough
// Switch statements in Swift don't fall through the bottom of each case an into the next one. Instead, the entire switch statement completes its execution as soon as the the first matching case is completed. By constrast, C requires you to insert an explicit break statement at the end of every switch case to prevent fallthrough. Avoiding default fallthrough means that Swift switch statements are much more concise and predictable than their counterparts in C, and thus they avoid executing multiple switch cases by mistake.
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default: description += " an integer."
}
print(description)


// Labeled Statements
square = 9
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1}
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over 
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]
    }
}

print("Game over!")


// check api availability
if #available(iOS 9, OSX 10.10, *) {
    print(1)
} else {
    print(2)
}







