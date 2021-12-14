//===================================================
/*
 We will cover Variables, Constants, Strings, Tuples
 and Operation in this playground.
 */
//===================================================

import UIKit

//--------------------------------------
// defining constants and variables
//--------------------------------------

//-------------------------------------
// TYPE SAFETY
//-------------------------------------
/* Swift is a type safe language, which means we are required to define the type of the values we are going to store in a variable
*/

//-------------------------------------
// TYPE INFERENCE
//-------------------------------------
/* Type inference allows us to omit the variable type when the variable is defined with an initial value
 */


// constant -> keyword: let
let freezingTemperature = 32        // Int type
let VERSION = 2.3                   // Double type

// both are constants
let color = 3, displacement = 2000


// variable -> keyword: var
var currentTemperature = 85         // Int type
var k = 4.2                         // Double type
var name = "Richard"                // String type

var a = 3, b = 5, c = 9.2

//-------------------------------------
// EXPLICIT TYPE
//-------------------------------------
var pie: Float = 3.14

// here are examples of issues that can arise
/*
var str: Float = "game 1"               // wrong type assigned

var name1                               // xCode can not figure out the type of variable name1
*/

var name1 : String                     // this is a fix

//-------------------------------------
// INTEGER TYPES
//-------------------------------------
print("\n")
print("--------------------------------------------")
print("INTEGER TYPES")
print("--------------------------------------------")


print("Interger type Int8 min: \(Int8.min)")
print("Interger type Int8 max: \(Int8.max)")

print("Interger type Int16 min: \(Int16.min)")
print("Interger type Int16 max: \(Int16.max)")

print("Interger type Int32 min: \(Int32.min)")
print("Interger type Int32 max: \(Int32.max)")

print("Interger type Int64 min: \(Int64.min)")
print("Interger type Int64 max: \(Int64.max)")

print("Interger type Int min: \(Int.min)")
print("Interger type Int max: \(Int.max)")

print("Interger type UInt8 min: \(UInt8.min)")
print("Interger type UInt8 max: \(UInt8.max)")

print("Interger type UInt16 min: \(UInt16.min)")
print("Interger type UInt16 max: \(UInt16.max)")

print("Interger type UInt32 min: \(UInt32.min)")
print("Interger type UInt32 max: \(UInt32.max)")

print("Interger type UInt64 min: \(UInt64.min)")
print("Interger type UInt64 max: \(UInt64.max)")

print("Interger type UInt min: \(UInt.min)")
print("Interger type UInt max: \(UInt.max)")


//-------------------------------------
// BIANRY, OCTAL, HEXADECIMAL NUMBERS
//-------------------------------------

print("\n")
print("--------------------------------------------")
print("BIANRY, OCTAL, HEXADECIMAL NUMBERS")
print("--------------------------------------------")


// binary -> 0b
// octa -> 0o
// hexadecimal -> 0x
var d = 95
var e = 0b1011111
var f = 0x5f


// handle big nummber -> _
var distance = 400_000_212_932
print(distance)

//--------------------------------------------
// DIFFERENCE BETWEEN FLOAT AND DOUBLE TYPES
//--------------------------------------------

// Float -> 32-bit floating-point number and can have precision as small as 6 decimal digit
// Double -> 64-bit floating-point number and has precision at least 15 decimal digit
// default is Double

print("\n")
print("--------------------------------------------")
print("DIFFERENCE BETWEEN FLOAT AND DOUBLE TYPES")
print("--------------------------------------------")

var g:Int = 5
var h:Double = 4.2

// issue here cannot mix types with + operator
//var i = g + h                      // how would xCode figure out the type of variable i

// fixes
var i = Double(g) + h
var j: Int = g + Int(h)

//-------------------------------------
// BOOLEAN TYPE
//-------------------------------------
// Swift has a built-in Boolean type that accepts one of the built-in true and false

print("\n")
print("------------------------------------")
print("BOOLEAN TYPE")
print("------------------------------------")

let LOCKED = true                       // constant boolean
var debuggingIsOn = false

if LOCKED {
    print("The system is locked ")
}

if debuggingIsOn{
    print("The debugger is on")
}

// When you toogle the value in most language use ! operator
// debuggingIsOn != debuggingIsOn

// In Swift the boolean type have a method called toggle() to switch value of the boolean
debuggingIsOn.toggle()

if debuggingIsOn{
    print("The debugger is on now")
}


//-------------------------------------
// STRING TYPE
//-------------------------------------
// A string is an ordered collection of characters

print("\n")
print("------------------------------------")
print("STRING TYPE")
print("------------------------------------")

var aString = "Hello"
var otherString = "Bye"


// you can a multiline string literal you use -> """  """
var multiLineText = """
                    This is how you create a multi line string literal in swift.
                    Notice that I'm using triple quotes marks.
                    """

print(multiLineText)


// printing out each character of a String
// for example

print()                             // create a blank line on the console

for char in otherString {
    print(char)
}// end for





// you can concatenate Strings using the + operator
var combineStr =  aString + otherString

print("\n" + combineStr)

print("\n" + aString + otherString + multiLineText)

var combineStr2:String  = "123-"
combineStr2 += aString                              // you can use += operator on Strings to concatenate


print("\n" + combineStr2)

// in-line string -> \()
var combineStr3 = "Hello \(otherString)"            // this adds the string value of otherString to "Hello " it does this of the fly

print("\n" + combineStr3)

// RAW STRINGS
// use raw strings when dealing with backslashes or quotes
// if you wish to include backslashes or quotes in your string use the following -> # " "#

// in Swift 5
let aRawString = #" Please type "Hello" on the console and goto \user\home"#

//pre Swift 5
let aRawString1 = " Please type \"Hello\" on the console nd goto \\user\\home"        // had to use escape key \

print("\n" + aRawString)
print("\n" + aRawString1)

// using in-line with a raw string  use the following -> \#( )
let valueSetting = 20
let valueStatement = #" The current value is \#(valueSetting) which is great than 10"#

print("\n" + valueStatement)


// remember that let is for constant which implies immutable
// this is an error
// valueStatement += " Hello"                                       // valueStatement was declared using let so it is a constant

// Strings have many build-in methods we look at some: lowercased(),  uppercased()
print("\n" + valueStatement.uppercased())
print("\n" + aRawString1.lowercased())

// Important
// == on string will check (case-sensitive) if the string are the same
// isEmpty check contains characters or not

var testStr1 = "hello"
var testStr2 = "Hello"
print("\n Test1")

if testStr1 == testStr2{
    print( "\(testStr1) is the same as \(testStr2)")
} else {
    print( "\(testStr1) is different to \(testStr2)")
}

print("\n Test2")

if testStr1.uppercased() == testStr2.uppercased(){
    print( "\(testStr1) is the same as \(testStr2)")
} else {
    print( "\(testStr1) is different to \(testStr2)")
}

print("\n Test3")
if testStr1.isEmpty{
    print( "does not have characters")
} else {
    print( "has characters")
}

// LOOK AT THIS CAREFULLY
// Replacing  Occurrences within a String
var someTextToProcess = " 1 2 3 4 1 2 3 4 1 2 3 4"
var processedText = someTextToProcess.replacingOccurrences(of: "2", with: "1")

print("\n-------------------------")
print("Replacing  Occurrences")
print("-------------------------")
print(someTextToProcess)
print(processedText)

//-------------------------------------
// TUPLES
//-------------------------------------
// You can group multiple values in a single compound type.

print("\n")
print("------------------------------------")
print("TUPLES")
print("------------------------------------")

var data = ("Miami", 33131, "FIU", 92.4, 84.3)                        // creating a tuple notice you can have different type in the tuple

// how to access values in a tuple
print(data.0)
print(data.1)
print(data.2)
print(data.3)
print(data.4)


// going in reverse
var (city, zipCode, location, currentTemp, avgTemp) = data            // using the tuple to initialize

print("\n Going in reserve using a tuple")
print(city)
print(zipCode)
print(location)
print(currentTemp)
print(avgTemp)


// named tuples
// we can name the entries of a tuple
var data2 = (city: "Miami", zipCode: 33131, location: "FIU", currentTemp: 92.4, avgTemp: 84.3)  // creating a named tuple
print("\n Working with named tuple")
print(data2.city)
print(data2.zipCode)
print(data2.location)
print(data2.currentTemp)
print(data2.avgTemp)




//-------------------------------------
// OPERATORS
//-------------------------------------

print("\n")
print("------------------------------------")
print("OPERATORS")
print("------------------------------------")

//--------------------------------------
// comparison operators
//--------------------------------------
/*
 Equality:              A == B                  1 == 2  false
 Not Equal:             A != B                  1 != 2  true
 Greater than:          A > B                   1 > 2   false
 Less than:             A < B                   1 < 2   true
 Greater than or equal: A >= B                  1 >= 2  false
 Less than or equal:    A <= B                  1 <= 2  true
 */

//--------------------------------------
// arithmetic operators
//--------------------------------------
/*
 
+   addition
-   substraction
*   multipication
/   division
%   remainder           10 % 6   -> 10/6 gives remainder of 4
                        6 % 10   -> 6/10 gives remainder of 6
 */


//--------------------------------------
// compound assignment operators
//--------------------------------------
/*
 
 +=
 -=
 *=
 /=
 
 */

var m = 8
m += 2  // m = 10
m -= 2  // m = 8
m *= 2  // m = 16
m /= 2  // m =8



//--------------------------------------
// logic operators
//--------------------------------------
/*
NOT:           !                       !(true) = false
AND            &&
OR             ||
 
 
TRUTH TABLE AND
 
 A  |  B | A && B
 --------------------
 T  |  T | T && T = T
 --------------------
 T  |  F | T && F = F
 --------------------
 F  |  T | F && T = F
 --------------------
 F  |  F | F && F = F
 
 TRUTH TABLE OR
  
  A  |  B | A || B
  --------------------
  T  |  T | T || T = T
  --------------------
  T  |  F | T || F = T
  --------------------
  F  |  T | F || T = T
  --------------------
  F  |  F | F || F = F
 
 
 */
 
//-------------------------------------
// CLOSE / HALF OPEN RANGE OPERATORS
//-------------------------------------
// close range operator goes from first number to the number after the ...
// half open range operator goes from first number up to one less than the number after the ..<

print("\n")
print("------------------------------------")
print("CLOSE / HALF OPEN RANGE OPERATORS")
print("------------------------------------")

for i in 1...3{
    print("i has the value: \(i)")
}

print()

for k in -3..<5{
    print("k has the value: \(k)")
}
