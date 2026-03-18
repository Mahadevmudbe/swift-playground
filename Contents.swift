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


//
//How to return values from functions

func rollDice() -> Int {
    return Int.random(in:1...6)
}

let rollDiceNo = rollDice()
print(rollDiceNo)

func doesContainSameLetters(text1:String, text2:String) -> Bool {
    let sortedText1 = text1.sorted()
    let sortedText2 = text2.sorted()
    
    return sortedText1 == sortedText2
}

print(doesContainSameLetters(text1: "jacob", text2: "caboj"))


//if there is only one line in func which return value then we can exclude return keyword
func pythagoras(a:Double, b:Double) -> Double {
    sqrt(a*a + b*b)
}

let ic = pythagoras(a: 3, b: 4)
 print(ic)

//Tuple : usecase return multiple values from a function
//in dictionaries swict can not knew ahead of time dictionary keys are present
//dictionary might contain other hundred of others values

func getUser() ->(firstName : String , lastName : String) {
    (firstName : "kartik", lastName: "singh")
}
let users = getUser()
print(users)

//no need to give names
func getUser1() -> (String, String){
    ("jayesh", "kumar")
}
let user1 = getUser1()
print("user name is \(user1.0) \(user1.1)")

//destructuring
let (firstName2 , secondName2) = getUser1()
print("destructure name \(firstName2) \(secondName2)")

//
//How to customize parameter labels
func isUpperCase(_ string : String) -> Bool{
    string == string.uppercased()
}

isUpperCase("HELLO")
//provide deafult value to parameters , giveing argument, parameter name
//Parameter Labels: You can customize external parameter labels for readability or use an underscore _ to disable them
func calculateTip(for bill : Int = 200){
    print((bill)/10)
}
calculateTip(for: 100)
calculateTip()

//
//How to handle errors in functions
enum passwordErrors : Error{
    case short , obvious
}

func checkPass(_ password : String) throws -> String {
    if(password.count < 5){
        throw passwordErrors.short
    }
    if(password == "12345"){
        throw passwordErrors.obvious
    }
    if(password.count < 8){
        return "short"
    }else{
        return "excellent"
    }
}


let password = "12345"
do{
    let result = try checkPass(password)
    
}
catch passwordErrors.obvious{
    print("obvious error")
}
catch{
    print("password error \(error.localizedDescription)")
}


//try! - do not require do catch block
//means - i think this fn is safe to throw no errors otherwise code will crash

//let result2 = try! checkPass(password)
//print(result2)



//Checkpoint 4
enum squareRootError : Error {
    case outOfBound , noRoot
}

func checkSquareRoot( _ number : Int) throws -> Int{
    if(number < 1 || number > 10_000){
        throw squareRootError.outOfBound
    }
    for num in 1...100{
        if num * num == number {
            return num
        }
    }
    throw squareRootError.noRoot
}

do{
   let result = try checkSquareRoot(10000)
    print("sqrt of number is \(result)")
}catch squareRootError.noRoot{
    print("no root error")
}catch squareRootError.outOfBound{
    print("out of bound error")
}catch {
    print("error occured")
}



//How to create and use closures
//assign funtionality directly to const or variable - swift give this a name closure expression means we created closure

let sayHello = {
print("hi")
}

sayHello()

//closures which accept parameters
//as our closures run between {}
//so we write parameters type and return type in {}
//in keyword => in keyword marks the end of parameters and return type and start of the body of the closure

let sayHi = {
    (name : String) -> String in
    "hi \(name)"
}

print(sayHi("kartik")) // no parameter name- name: "kartik" written in closures it gets hidden

//when we call sorted function it allow us to pass in custom sorting function
let team = ["kartik", "suyesh" , "abhi" , "mahadev" , "rajesh" ,"raju"]
let sortedTeam = team.sorted();
print(sortedTeam)

func captainFirstSortedTeam(firstName : String , secondName : String) -> Bool{
    if(firstName == "rajesh"){
        return true
    }else if secondName == "rajesh" {
        return false
    }else{
        return firstName < secondName
    }
}
let captainFirstTeam = team.sorted(by: captainFirstSortedTeam)
print(captainFirstTeam)

//using closures
let captainFirstTeamUsingClosure = team.sorted(
    by: { (firstName : String , secondName : String) -> Bool in
        if(firstName == "kartik"){
            return true
        }else if secondName == "kartik" {
            return false
        }else{
            return firstName < secondName
        }
    }
)
print(captainFirstTeamUsingClosure)

//

//How to use trailing closures and shorthand syntax
//as sorted by - expects exact two strings as parameters and bool as return type so as we know its expects exact params and return type so we can exclude them
let captainFirstTeamUsingClosure2 = team.sorted(
    by: { firstName, secondName in
        if(firstName == "kartik"){
            return true
        }else if secondName == "kartik" {
            return false
        }else{
            return firstName < secondName
        }
    }
)

//when one function expects another function as parameter like sorted does swift gives us specical syntax type called trailing clousure syntax
//it mean by chunk and clsoing parentheses goes away
let captainFirstTeamUsingClosure3 = team.sorted {firstName, secondName in
        if(firstName == "kartik"){
            return true
        }else if secondName == "kartik" {
            return false
        }else{
            return firstName < secondName
        }
    }

//swift provides parameters name using shorthand syntax
//with this we dont write (firstName, secondName in ) anymore we get automatic specially named variable counting from $0 $1 $2...

let captainFirstTeamUsingClosure4 = team.sorted {
        if($0 == "kartik"){
            return true
        }else if $1 == "kartik" {
            return false
        }else{
            return $0 < $1
        }
    }
//when to not use shorthand syntax
//when body is too big , $0 $1.. used multiple times , more than three params

//sort team which has first letter r
let startWithR = team.filter {$0.hasPrefix("r")}
print(startWithR)

//
//How to accept functions as parameters
func makeArray(size :Int,using generator : ()-> Int ) -> [Int] {
    var number = [Int]()
    
    for _ in 0..<size {
        let newNumber  = generator()
        number.append(newNumber)
    }
    return number
}

func generator() -> Int {
    Int.random(in:1...40)
}
let array = makeArray(size : 12,using : generator )
print(array)

let array2 = makeArray(size:14) {  //its trailling closure : as When the last parameter is a closure Swift lets you: Move it outside parentheses Remove the using: label
    Int.random(in:1...40)

}
print(array2)

//example 2

func doImportantWork(first : () -> Void , second : () -> Void , third : () -> Void){
    print("starting first work")
    first()
    print("starting second work")
    second()
    print("starting third work")
    third()
}

doImportantWork(first: {print("first work completed")}, second:{print("second work completed")} , third:{print("third work completed")})
doImportantWork {print("first work completed")} second:{print("second work completed")} third:{print("third work completed")} //Only the first trailing closure can omit its parameter label.
//All additional closures must keep their labels.


//checkpoiht 5
let luckyNumber = [2,7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//let filterLuckNumbers = luckyNumber.filter {$0 % 2 != 0}
//print(filterLuckNumbers)
//
//let sortedLuckNumbers = filterLuckNumbers.sorted {$0 < $1}
//print(sortedLuckNumbers)
//
//sortedLuckNumbers.map {print("\($0) is a lucky Number")}
luckyNumber.filter {$0 % 2 != 0}.sorted {$0 < $1} .map {print("\($0) is a lucky Number")}



//
//How to create your own structs

//struct let us create our own complex data type complete with our own variables and functions
//start with capital letter because its a type which we are referring to like - Int Bool ...

struct Employee {
    let name : String   // we have variables and constants inside a struct we call it properties
        var RemainingVacation : Int
//    add mutating in front of the func to  if want to modify any variable
    mutating func takeVacation(days : Int){   // func inside a struct we call it methods
        if(RemainingVacation > days){
            RemainingVacation -= days
            print("going to the vacation")
            print("ramaining vacation days \(RemainingVacation)")
        }else{
            print("oops no vacation left")
        }
    }
    
}

var employee1 = Employee(name: "raju" , RemainingVacation: 12) //we call this intializer of struct, internally it calls init which provides more value to creatiom of struct
employee1.takeVacation(days: 4) //as we are mutating values here so we cant use let for employee1 variable as we are changing underlying data of the struct as whole thing becames constant


//
//How to compute property values dynamically

//struct have two kind of property
//1. stored property : place a value into the struct directly
//2. computed property : it recalculates the value of the property every time its accessed  .
//means this computed properties are blend of stored properties and methods in that they are accessed like stored properties  but they weok like funtions
 
struct Employee2 {
    let name : String
    var vacationAllocated : Int
    var vacationTaken : Int = 0
    
    var vacationRemaining : Int { // computed property
        get {                                          //getter to get value
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue //provided by swift inside setter  , whatever value we assign to vacationRemaning we be provided to newValue
        }
    }
}

var archer = Employee2(name:"ketan" , vacationAllocated: 14)

archer.vacationTaken += 4
archer.vacationRemaining = 7
print(archer.vacationAllocated)

//
//How to take action when a property changes

//swift let us create property observers whcih runs whenever property value changes
//comes in two form -  did set observers runs after property changes and will set when about to change

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score += 10

game.score -= 1


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is : \(contacts)")
            print("new value is : \(newValue)")
        }
        didSet {
            print("there are now : \(contacts.count) contacts ")
            print("old value was : \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("a")
app.contacts.append("b")


//How to create custom initializers

//var archer = Employee2(name:"ketan" , vacationAllocated: 14) //memberwise intializer

struct Player {
    let name : String
    let number : Int
    
    init(name : String , number : Int){
        self.name = name          //assign name parameter to self's name property
        self.number = number
    }
}


//
//How to limit access to internal data using access control
//by default swift let us access properties and methods inside structs freely sometimes we dont want this

//private : dont let outside struct use this

//filePrivate : dont let outside the current file use this
 
//public : let anyone anywhere use this

//private(set) : let anyone internally or externally read this property but only internal methods can write it

struct BankAccount {
    private(set) var funds : Int = 0
    
    mutating func deposit(amount : Int){
        funds += amount
    }
    
    mutating func withdraw(amount : Int) -> Bool{
        if amount < funds {
            funds -= amount
            return true
        }else {
            return false
        }
    }
    
}

var account = BankAccount()
account.deposit(amount: 22)
account.withdraw(amount: 2)
print(account.funds)


//
//Static properties and methods
//sometimes we want to add property or method to struct itself not to single instance of it, this let us access it directly
//usecase : to store constant data has to be accessed in various places in my program

struct School {
    
    static var studentCount = 0
    
    static func  add (student : String){
        print("\(student) got enrolled")
        studentCount += 1
    }
    
}

School.add(student : "rj")
print(School.studentCount)


//self (s = lowercase) means : the current value of struct                        // 55 , "Hello" , true
//Self (S = capital) means : the current type of struct we are on right now       // Int , String , Bool

struct Employee3 {
    let usermane : String
    let password : String
    
    static let example = Employee3(usermane: "m1", password: "M@000")
}

enum gearType {
    case up , down
}

//checkpoint 6
struct Car {
    let model : String
    let numberOfSeats : Int
   private(set) var currentGear : Int
    
    mutating  func changeGear(gear : gearType){
        if(gear == gearType.up){
            if currentGear > 9 {
                print("you are on top gear")
            }else {
                currentGear += 1
                print("you are on \(currentGear) gear")

            }
        }else if(gear == gearType.down){
            if currentGear < 2 {
                print("you are on 1st gear")
            }else{
                currentGear -= 1
                print("you are on \(currentGear) gear")

            }
        }
    }
}


var swift = Car(model:"2015" , numberOfSeats: 5 , currentGear: 1)
swift.changeGear(gear: gearType.down)

swift.changeGear(gear: gearType.up)
swift.changeGear(gear: gearType.up)
swift.changeGear(gear: gearType.down)



