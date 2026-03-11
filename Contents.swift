import Cocoa

var greeting = "Hello, playground"
//multiline string """ then line break -> then in next lines your sentence -> line break and ending quotes
let address = """
              maharastra
              india
"""
let nameLength = address.count
print(nameLength)
print(address.uppercased())
print(greeting.hasPrefix("Hello"))

//How to store whole numbers
let score = 10

//breakup long numbers using underscore
let bigNumber = 10_00_00
print(bigNumber)

//compound assignment operator( *=)
var counter = 10
counter += 23
counter *= 2

//
let number = 30
print(number.isMultiple(of:7))


//How to store decimal numbers/ doubles
// as swift assigns double amount of space
let doubleAmountOfData = 0.1+0.2
print(doubleAmountOfData)

//type safety in swift
//if try to add int + double must either convert to double or int else will get error
let a = 10
let b = 2.0

let c = Double(a)+b
print(c)

//swift intercengebally uses cg float and double - no need to worry about it swift handles it


//
//How to store truth with Booleans
var toggle = true
print(toggle)
toggle.toggle()
print(toggle)

//
//How to join strings together
let firstName = "kartik"
let lastName = "singh"
print(firstName + lastName)

//string interpolation
let age = 26
print("my name is \(firstName) \(lastName) and i am \(age) years old")

//task 1
let temperatureInCelcious = 15.5
let temperatureInFaren = ((temperatureInCelcious * 9) / 5 ) + 32
print("temperature in celcious is \(temperatureInCelcious)°C, temp in faren is \(temperatureInFaren)")






