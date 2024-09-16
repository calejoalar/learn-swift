// The Swift Programming Language
// https://docs.swift.org/swift-book

/*****/
let myConstant = 44
var myVariable = 12
myVariable = 39
print(myConstant)
print(myVariable)

/*****/

var test01: Float = 23.33
var test02: String = "hola"
var test03: [String] = []
var test04: [String: Float] = [:]

/*****/

let individualScore = [23,66,57,23,99,102]
var teamScore = 0;
for score in individualScore {
    if score >= 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

/*****/

print("Hello, world!")

var colors = ["red", "yellow", "green"]
colors.append("black")

print(colors)

var book = [
    "author": "Michael Phelps",
    "price": "23.54"
]

print(book)


print("/***** optional ****/")

var optionalString : String? = "Hello"
print(optionalString == nil)

var optionalName : String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hi!"
}
print(name)


print("/*********/")
let myStringNumber = "123"
let myNumber = Int(myStringNumber)

print(myNumber)
