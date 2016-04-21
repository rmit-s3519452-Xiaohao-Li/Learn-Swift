//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Collection Types
// Swift provides three primary collection types, known as arrays, sets and dictionaries, for stroing collections of values. Arrays are ordered collections of values. Sets are unordered collections of unique values. Dictionaries are unordered collections of key value associations.
// Arrays, sets and dictionaries in Swift are always clear about the types of values and keys that they can store. This means that you cannot insert a value of the wrong type into a collection by mistake. It also means you can be confident about the type of values your will retrieve from a collection

// Arrays
// An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions

// Array Type Shorthand Syntax
// The type of a Swift array is written in full as Array<Element>, where Element is the type of values the array is allowed to store. You can also write the type of an array is allowed to store. You can also write the type of an array in shorthand form as [Element]. Although the two forms are functionally identical, the shorthand form is preferred and is used throughout this guide when referring to the type of an array.

// Creating an Empty Array 
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

// Creating an Array with a Default Value
// Swift's Array type also provides an initializer for creating an array of a certain size with all of its values set to the same default value. You pass this initializer the number of items to be added to the new array (called count) and a default value of the appropriate type (called repeatedValue):
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

// Creating an Array by Adding Two Arrays Together
// You can create a new array be adding together two existing arrays with compatible types with the addition operation (+). The new array's type is inferred from the type of the two arrays you add together:
var anotherThreeDoubles = [Double](count:3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles

// Initialise arrays with value
var shoppingList: [String] = ["Eggs", "Milk"]
var anotherShoppingList = ["Eggs", "Milk"]

// You can add a new item to the end of an array by calling the array's append() emthod:
shoppingList.append("Flour")

// Alternatively, append an array of one or more compatible items with the addition assignment operator (+=):
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

// Retrive an element in an array
var firstItem = shoppingList[0]

// Modify elements in an array
shoppingList[0] = "Six eggs"
shoppingList.count

//You can also use subscript syntax to change a range of values at once, evem of the replacement set of values has a different length than the range you are replacing. 
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.count

// To insert an item into the array at a specified index, call the array's insert(_:atIndex:) method:
shoppingList.insert("Maple Syrup", atIndex: 0)

// Remove an item at a specific index
let mapleSyrup = shoppingList.removeAtIndex(0)
mapleSyrup

// remove the finial item of the array list
let apples = shoppingList.removeLast()
apples

// Iterating Over an Array
for item in shoppingList {
    print(item)
}

// If you need the integer index of each item as well as its value, use the enumerate() method to iterate over the array instead. For each item in the array, the enumerate() method returns a tuple composed of the index and the value of that item. You can decompose the tuple into temporary constants or variables as part of the iteration 
for (index, value) in shoppingList.enumerate(){
    print("Item \(index + 1): \(value)")
}

// Sets 
// A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once
// Creating and Initializing an Empty Set 
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

// InsertValue to set
letters.insert("a")
letters = []

// Creating a Set with an Array Literal 
var favouriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var secondFavouriteGenres: Set = ["Rock", "Classical", "Hip hop"]

// To check whether a set contains a particular item
if favouriteGenres.contains("Funk") {
    print("yes")
} else {
    print("no")
}


// iterate and sort the set
for genre in favouriteGenres.sort() {
    print("\(genre)")
}

// Fundamental Set Operations
// Use the intersect(_:) method to create a new set with only the values common to both sets.
// Use the exclusiveOr(_:) method to create a new set with values in either set, but not both.
// Use the union(_:) method to create a new set with all of the values in both sets.
// Use the subtract(_:) method to create a new set with values not in the specified set.

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
oddDigits.intersect(evenDigits).sort()
oddDigits.subtract(singleDigitPrimeNumbers).sort()
oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()

// Set Membership and Equality
// Use the isSubsetOf(_:) method to determine whether all of the values of a set are contained in the specified set
// Use the isSupersetOf(_:) method to determine whether a set contains all of the values in a specified set
// Use the isStrictSubsetOf(_:) or isStrictSupersetOf(_:) methods to determine whether a set is a subset or superset, but not equal to, a specified set
// Use the isDisjointWith(_:) method to determine whether two sets have any values in common
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)

// Dictionaries: a dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dicetionary. Unlike items in an array, items in a dictionary do not have a specific order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a read-world dictionary is used to look uo the definition for a particular word
// Dictionary Type Shorthand Syntax: the type of a Swift dictionary is written in full as Dictionary<key, value>, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys
// shorthand form [Key: Value]

// Create an Empty Dictionary
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

// Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// Accessing and Modifying a Dictionary
print("The airports dictionary contains \(airports.count) item.")

// As an alternative to subscripting, use a dictionary's updateValue(_:forKey) method to set or update the value for a particular key. Like the subscript examples above, the updateValue(_:forKey:) method sets a value for a key of non exists, or updates the value if that key already exists. Unlike a subscript, however, the updateValue(_:forKey:) method returns the old value after performing an update. This enables you to check whether or not an update took place.
// The updateValue(_:forKey:) method returns an optional value of the dictionary's value type. For a dictionary that stores String value that stores String values, for example, the method returns a value of type String?, or "optional String". This optional value of type String?, or "optional String". This optional value contains the old value for that key if one existed before the update, or nil if no value existed:
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// Use subscript to retilve a set value
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["APL"] = "Apple International"
// remove an element in the dictionary
airports["APL"] = nil

// remove a key value 
if let removedValue = airports.removeValueForKey("DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

// retrieve keys or values of a dictionary
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports.values {
    print("Airport name: \(airportName)")
}

// If you need to use a dictionary's keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)










