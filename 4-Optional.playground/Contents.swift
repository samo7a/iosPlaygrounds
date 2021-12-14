//===================================================
/*
 We will cover Optional Types in this playground
 */
//===================================================

import UIKit


//-------------------------------------
// OPTIONAL TYPES
//-------------------------------------
// By default when you declare a variable in Swift
// then are non-optional. Meaning the variable cannot
// be have a nil value.
// Use ? to create an optional type

// IMPORTANT
// the optional type is an enumeration with two possible values
// Nome or some<T> where T is a generic
// Internally an optional is defined this way
/*
 emun Optional<T>
 {
    case None
    case Some(T)
 }
 */

// if have a variable that is an optional it is best to check the
// value of the variable before using it

print("\n")
print("--------------------------------------------")
print("OPTIONAL TYPES")
print("--------------------------------------------")


var textMessage: String = "Hi"
// textMessage = nil                                    // this is an issue


var testMessageToStringInTheFuture: String
// testMessageToStringInTheFuture = nil                // this is an issue


var testMessage2: String?                               // testMessage2 is now declared as the optional String type
testMessage2 = nil                                      // hence it can take on a value of nil


if testMessage2 != nil{                                  // look at this carefully  this will always be true why
    print("textMessage = \(textMessage)")
} else {
    print("textMessage = nil")
}

textMessage = ""

if textMessage.isEmpty{
    print ("textMessage = \(textMessage)")
} else {
    print ("textMessage = has no text")
}


// if have a variable that is an optional it is best to check the
// value of the variable before using it

var city: String?
city = "Miami"

if city != nil{
    print(" \(city) is an nice place" )
    print(" \(String(describing: city)) is an nice place")       // look at this fix for the waring
}



//------------------------------------
// OPTIONAL BINDING
//------------------------------------
// optional binding checks if the optional has a value and assign to a temporary variable or constant
// this is very useful


print("\n")
print("--------------------------------------------")
print("OPTIONAL BINDING")
print("--------------------------------------------")


var employeeSecurityClearance:String? = "High"

if let securityClearance = employeeSecurityClearance{                   // you see that employeeSecurityClearance is unwrapped here
    print( "The security clearance is \(securityClearance) ")
} else{
    print("The employee has no security clearance assigned")
}

// unwrapping multiple optionals
var value1:Int?
var value2:String?
var value3:Double?

value1 = 3
value2 = "New York"
    
if let tmp1 = value1, let tmp2 = value2, let tmp3 = value3{            // if any of the value1-3 are nil this this will return false
    print( "\n All of the variables are not nil")
} else{
    print( "\n At least on of the variables has a nil value")
}

value3 = 3.2

if let tmp1 = value1, let tmp2 = value2, let tmp3 = value3{            // if any of the value1-3 are nil this this will return false
print( "\n All of the variables are not nil")
} else{
print( "\n At least on of the variables has a nil value")
}


// Rememeber that the scope of tmp1, temp2 , tmp3 is only if the block of the if-else


//------------------------------------
// OPTIONAL TYPES WITH TUPLES
//------------------------------------
// This is using when returning a tuple from a method

print("\n")
print("--------------------------------------------")
print("OPTIONAL TYPES WITH TUPLES")
print("--------------------------------------------")
// This is using when returning a tuple from a method

// different ways to define a  tuple with optionals
var data1: (city: String, zipCode: Int, address: String)?           // here the entire tuple is an optional
                                                                    // hence the tuple itself can be nil

var data2: (city: String?, zipCode: Int?, address: String)          // here fields in the tuple can be optional -> city and zipCode can be nil
                                                                    // but the tuple itself cannot be nil

var data3: (city: String?, zipCode: Int?, address: String)?         // here fields and the tuple can be optional



//------------------------------------
// OPTIONAL CHAINING
//------------------------------------

print("\n")
print("--------------------------------------------")
print("OPTIONAL TYPES WITH CHAINING")
print("--------------------------------------------")
// the idea of optional in swift works of properties and methods also
// this is super powerful idea ...

// here if employee or level are nil the secuityLevel will be nil
// if employee and level are not nil then secuityLevel will take on the value of securityClearence
/*

 var  securityLevel = employee?.level?.securityClearance

 */

// we will do more examples of this idea after I cover classes

//------------------------------------
// nil COALESCING OPERATOR
//------------------------------------
// ?? is the nil coalescing operator
// this operator work similar the ternary opertor


print("\n")
print("--------------------------------------------")
print("nil COALESCING OPERATOR")
print("--------------------------------------------")
// remember the ternary works like this

var brakesAreOn = true
var speed = ( brakesAreOn ? 30 : 100)
print("\nspeed: \t \(speed) \n")


// using the nil coalesing operator
var defaultValue = "John Doe"
var employee1Name:String?
var employee2Name:String?

employee1Name = "Albert Einstein"

var name1 = employee1Name ?? defaultValue           // if employee1Name is nil return the defaultValue
                                                    // otherwise return the employee1Name
print("Name of employee1: \t \(name1)")


var name2 = employee2Name ?? defaultValue           // if employee2Name is nil return the defaultValue
                                                    // otherwise return the employee2Name
print("Name of employee2: \t \(name2)")



