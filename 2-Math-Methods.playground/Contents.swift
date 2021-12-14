//--------------------------------
// NOTICE THE IMPORTS
//--------------------------------
import UIKit                                    // default import
import Foundation                               // added import

//--------------------------------

//-----------------------------
// ABSOLUTE VALUE
//-----------------------------

print()
print("-----------------------------")
print("ABSOLUTE VALUE")
print("-----------------------------")

var calculatedValue = -3.239
var calculatedValueABS = abs(calculatedValue)              // calling the abs method

print("calculatedValue: \t\t \(calculatedValue)")
print("calculatedValueABS: \t \(calculatedValueABS)")


//-----------------------------
// MIN, MAX VALUES
//-----------------------------

print()
print("-----------------------------")
print("MIN, MAX VALUE")
print("-----------------------------")

var value1 = 291.21
var value2 = 12

// let minValue = min(value1, value2)           // type issue here
// a fix
let minValue = min(value1, Double(value2))

let maxValue = max(Int(value1), value2)         // look at this carefully against the code above....

print("minValue: \t \(minValue)")
print("maxValue: \t \(maxValue)")


//-----------------------------
// FLOOR
//-----------------------------
// Removes the decimal part of a number

print()
print("-----------------------------")
print("FLOOR")
print("-----------------------------")

let aValue = 2.8
let floorValue = floor(aValue)

print("aValue: \t\t \(aValue)")
print("floorValue: \t \(floorValue)")


//-----------------------------
// CEIL
//-----------------------------
// Rounds up a a number

print()
print("-----------------------------")
print("CEIL")
print("-----------------------------")

let otherValue = 2.3
let ceilValue = ceil(otherValue)

print("otherValue: \t \(otherValue)")
print("ceilValue: \t\t \(ceilValue)")

//-----------------------------
// SQUARE ROOT
//-----------------------------

print()
print("-----------------------------")
print("SQUARE ROOT")
print("-----------------------------")

var valueToSquareRoot = 291
var squareRootValue = sqrt(Double(valueToSquareRoot))       // need a Double type in sqrt method

print("squareRootValue: \t \(squareRootValue)")
print(String(format: "squareRootValue: \t %.4f", squareRootValue))  // using formatted string with 4 decimal places


//-----------------------------
// EXPONENT - POW
//-----------------------------

print()
print("-----------------------------")
print("EXPONENT - POW")
print("-----------------------------")

var base = 2.0
var power = 3.0

var exponentValue = pow(base, power)     //   2^3 = 8
print( "\(base) raised to the \(power) power = \(exponentValue)")

exponentValue = pow(power, base)     //   3^2 = 9
print( "\(power) raised to the \(base) power = \(exponentValue)")


//-----------------------------
// EXP, LOG
//-----------------------------

print()
print("-----------------------------")
print("EXP")
print("-----------------------------")

var result1 = exp(10.0)                 // Notice that input is not a integer
print( "e^10 = \(result1)")


print()
print("-----------------------------")
print("LOG")
print("-----------------------------")
// this is the natural log
result1 = log(exp(1.0))
print( "log(e) = \(result1)")


print()
print("-----------------------------")
print("LOG10")
print("-----------------------------")
// this is the natural log base 10
result1 = log10(10.0)
print( "log10(10) = \(result1)")



//-----------------------------
// SIGN
//-----------------------------
// sign returns the sign of the number

print()
print("-----------------------------")
print("SIGN")
print("-----------------------------")

let aValue2 = -32.23942
var result2 = aValue2.sign

print("Orginal value \(aValue2) the sign on the number is: \(result2)")


//-----------------------------
// PI VALUE
//-----------------------------
// how to get pi value

print()
print("-----------------------------")
print("PI VALUE")
print("-----------------------------")

var pie = Double.pi

print()
print(pie)




