import UIKit

var name = "Burak"

print(name)

name = "burak" // String

print(name)

// Yorum satırı

let constant = 40 // you cannot change this. Int.
let pi = 3.14 // Double
constant.isMultiple(of: 3) // Bool

var myNumber : Double = 50
var divisor : Double = 10

myNumber / divisor // ikisi de double olduğu için double sounuc verdi.

// defining
var myString : String

// initialization
myString = "Atıl"

myString = String (divisor)


// COLLECTIONS =============================================


var array = ["Burak", "Atlas", "Mehmet"]
array[0].uppercased() //index

var array2 = [10, 20, 42]
array2[2] / 2

var heterogenous = [100, 200, true, "Burak"] as [Any]
// as -> casting, any -> any object

var new = heterogenous[3] as! String
// sen String yap bu değeri ben eminim demek

var numbers : Set = [1, 1, 2, 3, 4, 4]
var numbers1 : Set = [5, 5, 6, 7, 8, 8]
// unique elements

numbers.union(numbers1)
// 8 elements in here

var dictionary = ["Turkey" : "TR", "France" : "FR", "Germany" : "GR"]
// key-value

dictionary["Germany"] = "GR."


// LOOPS ===================================================


5 == 4
5 != 4
5 > 4

// while
var x = 0
print("Loop started")
while x < 10 {
    print(x)
    x += 1 //x++ burda yok
}
print("Loop ended")


// for
var myArray = ["Atıl", "Mahmut", "Mehmet"]
for name in myArray {
    print(name.uppercased())
}

var numberArray = [10, 20, 30, 40, 50]
for number in numberArray {
    print(number / 5 * 3)
}

for newNum in 1 ... 10 {
    print(newNum)
}


// IF STATEMENTS =============================================


var age = 18

if age < 20 {
    print("You are too young.")
}
else if age >= 20 && age < 30 {
    print("In your twenties.")
}
else {
    print("Other.")
}

// FUNCTIONS =================================================


func funcName() {
    print("Examples.")
}

funcName()

func stringPrint(a : String) {
    print(a)
}

stringPrint(a: "burak")

func sum(x: Int, y: Int) {
    print(x + y)
}

sum(x: 10, y: 5)

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

// OPTIONALS =================================================


// bu değişken biri değer alacak mı almayacak mı ?
var myName : String?
// nil safety için bu kavram ortaya çıkmış
// nil = null

myName = "Burak"
myName?.uppercased()

var numberEx = "20"
var result = Int(numberEx)! * 5
// ünlem koymazsan işlemi yapmaz.
// ünlem işareti koyunca kesin eminsin türünden demek oluyor


result = (Int(numberEx) ?? 1) * 4
// eğer int'e döndürmezsen 1 yap.


//int'e çevir, çevrilmiyorsa başka işlem yap
if let newResult = Int(numberEx) {
    newResult * 5
}
else {
    print("wrong type!")
}

