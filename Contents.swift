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



//How to store ordered data in arrays
// array is a fundamental data structure use to store collection of items under a single variable name. this items are typically same data type and stored in contiginues memory location for efficient access.

var marks = [1,3,9]
marks.append(12)

var fruits = Array<String>()
fruits.append("apple")

var cities = [String]()
cities.append("mumbai")

//
//How to store and find data in dictionaries
var students = ["name":"kartik", "age":"23","subject":"science"]
print(students["age", default: "unknown"])

var book = [String:String]()
book["motivation"] = "rich dad"
print(book["motivation", default: "f"])
print(book)


//How to use sets for fast data lookup
//dont remember the order we add and dont allow duplicates

let actors = Set(["saha rukh","salman","ranveer","vijay"])
print(actors)


var names = Set<String>()
names.insert("kartik")
names.insert("singh")
print(names)

//
//How to create and use enums
enum weekday {
  case  monday, tuesday, wenesday, saturday
}

var day = weekday.monday
day = .saturday
print(day)


var colors = ["red", "green","yellow","blue","red","blue"]
print(colors.count)

var colorSet = Set(colors)
print(colorSet.count)


//if else
let username = "kartik0"
if username.isEmpty {
    print("unknown")
}
print(username)


//How to use switch statements to check multiple conditions

enum forecast {
    case sunny, rainy, cloudy , windy
}

var forecast1 = forecast.sunny
switch forecast1 {
case .sunny:
    print("its sunny")
    
case .rainy:
    print("its rainy")
    
case .cloudy:
    print("its cloudy")
    
case .windy:
    print("its windy")
}

//fallthrough as every case below it will run
let count = 4

switch count {
case 5:
    print("its 5")
    fallthrough
case  4:
  print("its 4")
    fallthrough
case 3:
    print("its 3")
    fallthrough
case 2:
    print("its 2")
    fallthrough
default:
    print("none")
    
}

//
//How to use the ternary conditional operator for quick tests

let numberOfCountries = ["india", "china"]
for country in numberOfCountries {
print(country)
}


for odd in 1...20 {
    let isOdd = odd % 2 != 0
    if isOdd{
        print(odd)
    }
}

var roll = 0
while roll != 20 {
    roll = Int.random(in:1...20)
    print("rolled \(roll)")
}

//
//How to skip loop items with break and continue

//with continue it skip that item code below the continue statement

let images = ["phone.jpg", "video.mp3", "tablet.png" , "tv.jpg"]

for filename in images {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("jpg files are \(filename)")
}


//skip - skip will skip that iteration and all other remaining iteration

let number1 = 7
let number2 = 23
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
    }
    if (multiples.count > 10){
        break
    }

}
print("multiples", multiples)



//Checkpoint 3

for number in 1...100 {
  
  if(number.isMultiple(of: 3) && number.isMultiple(of: 5)){
        print("FizzBuzz")
    }
    else if (number.isMultiple(of: 3)){
        print("fizz")
    }else if number.isMultiple(of: 5){
        print("buzz")
    }
    else{
    print(number)
    }
}
