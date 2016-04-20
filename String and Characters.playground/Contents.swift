//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Initializing an Empty String
var emptyString = ""
//empty string literal
var anotherEmptyString = String()
// initializer syntax
// these two strings are both empty, and are equivalent to each other 

// to check if a string is empty
if emptyString.isEmpty {
    print("Nothing to see here")
}

// String Mutability
var variableString = "Horse"
variableString += " and carriage"

//Working with Characters
for character in "Dog!🐶".characters {
    print(character)
}
// D
// o
// g
// !
// 🐶

// String values can be constructed by passing an array of Character values as an argument to its initializer:
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print (catString)

// Concatenating Strings and Characters
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

// Using addition assignment operator (+=):
var instruction = "look over"
instruction += string2

// append a Character value to a String variable with the String type's append() method:
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

// String Interpolation: String interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal. Each item that you insert into the string literal is wrapped in a pair of parentheses, prefixed by a backslash:
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"

// Counting Characters
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

// Combining acute accent does not change the word count
var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
word += "\u{301}"
print("the number of characters in \(word) is \(word.characters.count)")

// Accessing and Modifying a String
// String Indices
// Each String value has an assocaited index type, String.Index, whcih corresponds to the position of each Character in the string
// As mentioned above, different characters can require different amounts of memory to store, so in order to determine which Character is at a particular position, you must iterate over each Unicode scalar from the start or end of that String. For this reason, Swift string cannot be indexed by integer value
// Use the startIndex property to access the position of the first Character of a String. The endIndex property is the position after the last character in a String. As a result, the endIndex property isn't a valid argument to a string's subscript. If a String is empty, startIndex and endIndex are equal.
// A String.Index value can access its immediately preceding index by calling the predecessor() method. Any index in a String can be accessed from any other index b y chaining these methods together, or by using the advancedBy(_:) method. Attempting to access an index outside of a string's range will trigger a runtime error.
// You can use subscript syntax to access the Character at a particular String index
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.endIndex.predecessor()]
greeting[greeting.startIndex.successor()]
let index = greeting.startIndex.advancedBy(7)
greeting[index]

// Use the indices property of the characters property to create a Range of all of the indexes used to access individual characters in a string
for index in greeting.characters.indices {
    print("\(greeting[index]) ", terminator:"")
}

// Inserting and Removing
// Inserting a character into a string
welcome = "hello"
welcome.insert("!", atIndex: welcome.endIndex)

// Inserting the contenst of another string at a specified index, use the insertContentOf(_:at:) method
welcome.insertContentsOf(" there".characters, at: welcome.endIndex.predecessor())

// To remove a character from a string at a specified index, use the removeAtIndex(_:) method.
welcome.removeAtIndex(welcome.endIndex.predecessor())
welcome

// To remove a substring at a specified range, use the removeRange(_:) method:
let range = welcome.endIndex.advancedBy(-6)...welcome.endIndex.predecessor()
welcome.removeRange(range)

// Comparing Strings
// String and Character Equlity
let quotation = "we're a lot alike, you and I."
let sameQuotation = "we're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are the same")
}

// Prefix and Suffix Equality
// To check whether a string has a particular string prefix or suffix, call the string's hasPrefix(_:) and hasSuffix(_:) methods, both of which take a single argument of type String and return a Boolean value.
let romeoAndJuliet = [
    "Act 1 Scence 1: Verona, A public place",
    "Act 1 Scence 2: Capulet's mansion",
    "Act 1 Scence 3: A room in Capulet's mansion",
    "Act 1 Scence 4: A Street outside Capulet's mansion",
    "Act 1 Scence 5: The Great Hall in Capulet's mansion",
    "Act 2 Scence 1: Outside Capulet's mansion",
    "Act 2 Scence 2: Capulet's orchard",
    "Act 2 Scence 3: Outside Friar Lawrence's cell",
    "Act 2 Scence 4: A street in Verona",
    "Act 2 Scence 5: Capulet's mansion",
    "Act 2 Scense 6: Friar Lawrence's cell"
]

// You can use the hasPrefix(_:) method with the remeoAndJuliet array to count the number of scenes in Act 1 of the play:
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

// Similarly, use the hasSuffix(_:) method to count the number of scenes that take place in or around Capulet's mansion and Friar Lawrence's cell:
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")







