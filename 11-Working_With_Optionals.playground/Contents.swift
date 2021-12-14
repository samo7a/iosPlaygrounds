//
//  Working_With_Optionals.swift


import Foundation
import UIKit


/*
 =============================================================
 Big Idea:
 Optionals are nil or have a value.
 Note before you can use an optional, you’ll need to unwrap it.
 =============================================================
 */





var firstName: String = "James"

//firstName = nil   // nil cannot be signed to type string
print(firstName)

// you cannot do this
//let anotherFirstName: String = nil



let middleName:String? = nil
print(middleName)

let lastName: String? = "Smith"
print(lastName)
print()

/*
===================================================
How To Force Unwrap an Optional

 With force unwrapping, using !
 
 Never force unwrap an optional that’s nil
 Always check if an optional is not nil before force unwrapping it

===================================================
*/


// LOOK OUT FOR THIS RUNTIME ERROR
// fatal error: Unexpectedly found nil while unwrapping an Optional value


var emailAddress:String? = nil

//print(emailAddress!)            // you will have a runtime error here
                                // Never force unwrap an optional that’s nil
                                // Always check if an optional is not nil before force unwrapping it


if emailAddress != nil {
    print(emailAddress!)
}else {
    print("Email address is nil")
}



emailAddress = "jamessmith@amazing.com"

if emailAddress != nil {
    print(emailAddress!)
    print()
}



/*
 ===================================================
 Optional binding, using if let
 ===================================================
 */

// alternative to force unwrapping is optional binding

let currentStockTracked: String? = "AAPL"


// the optional binding to the value of currentStockTracked to stockName IF IT'S NOT nil
// notice that optional(...) was not printed

if let stockName = currentStockTracked{
    print(stockName)
}

// look at this
if let currentStockTracked = currentStockTracked{
    print(currentStockTracked)
    print()
}



// useful idea
let labelText: String? = "Miami"
let textFieldValue:Double? = 0.23234928
let imageViewName:String? = nil

if let label = labelText,
   let textField = textFieldValue{
    print("Label : \(label) \t\t Text Field: \(textField)")
    print()
}else{
    print("Something is nil ")
}


if let label = labelText,
   let textField = textFieldValue,
   let imageName = imageViewName{
    print("Label : \(label) \t\t Text Field: \(textField) \t\t Image Name: \(imageName)")
}else{
    print("Something is nil ")
    print()
}




/*
 =================================================
 How To Use Optional Chaining
 =================================================
 */


class TextField{
    var text:String?
    init(text: String?){
        self.text = text
    }
}


var firstNameField: TextField = TextField.init(text: "James")
var passwordField: TextField? = TextField.init(text: nil)

// optional Binding method with  optional chaining.
if let _ = passwordField,                                         // look at this
   let password = passwordField?.text{
    print("We do not have all the needed data to login")
    print()
}

/*

if passwordField! != nil && passwordField!.text!  != nil{
    print("We do not have all the needed data to login")
    print()
}
 
*/

/* LOOK AT THE DIFFERENT
 
if passwordField! != nil && passwordField.text!  != nil{
    print("We do not have all the needed data to login")
    print()
}

*/


/*

passwordField!.text = "12345678" // Unsafe                         (1)
passwordField?.text = "12345678" // Safer (but not bug-free)       (2)

Both the ! and the ? deal with optionals. When textField is nil, this happens:

    (1)using force unwrapping, crashes!
    (2) using optional chaining, gracefully fails


*/


// GUARD

// The syntax for guard
/*
guard condition else { }
*/

/*
 ====================================================================
 Big Idea:
 The guard statement can only be used to “transfer program control out of scope”
 
 guard statement in Swift to an early return a function when a condition isn’t satisfied.
 notice that this behavior is like a opposite if statement
 
 if proposition {
    do something   <- true section
 }else{
        false section
 }
 
 
 if ! proposition {
    do something   <- false section
 }else{
        true section
 }
 ====================================================================
 */

func processPositiveNumber(number: Int ) -> Int? {
    guard number >= 0 else {
        return nil
    }
    
    print("Number has been processed")
    return number
}


if let x = processPositiveNumber(number: -5){
    print("X: \t\t \(x)")
}

if let x = processPositiveNumber(number: 15){
    print("X: \t\t \(x)")
}

/*
why not just you an if statement instead of guard
guard statement transfer program control out of scope. Hence it exit the function
this is call early return
    Reason to use it:
        1) it is easy to undeerstand
        2) it is efficient
 
*/

/*
 IMPORTANT (UNDERSTAND THIS)
 
 return -> to exit a function or closure
 break -> to exit a loop like for
 continue -> to continue to the next loop iteration
 throw -> to exit a function and throw an error value
 
 */


/*
 ===========================================
 Unwrap Optionals with (guard let)
 ==========================================
 */



func login() -> Void{
    guard let password = passwordField?.text else{
        print("Error logging in \n")
        return
    }
    
    print("Login with password: \t\t \(password) \n")
}


login()
