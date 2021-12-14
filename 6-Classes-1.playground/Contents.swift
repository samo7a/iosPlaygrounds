//===================================================
/*
 We will cover Swift's classes and structs in this
 playground
 */
//===================================================

import UIKit



//------------------------------------
// COMPARING CLASSES AND STRUCTS
//------------------------------------
/*
from Mastering Swift 5.3

------------------------------------------------
Simmilarities between classes and structures
------------------------------------------------
List of features that classes and structures care:
 
PROPERTIES: These are used to store information in our classes and structures
 
METHODS: These provide functionality for our classes and structures
 
INITIALIZERS: These are used when initializing instances of out class
 
SUBSCRIPTS: These provide access to values using the subscript syntax
 
EXTENSIONS: These help extend both classes and structures
 
------------------------------------------------
Differences between classes and structures
------------------------------------------------

 TYPE: A structure is a value type, while a class is a reference type
       Hence structure are passed by value class are pass by reference
 
 INHERITANCE: A structure cannot inhert from other types, while class can
 
 DEINITIALIZERS: Structures cannot have custom deinitializers, while class can
 */

//-----------------------------------------
// CREATING A STRUCTURE
//-----------------------------------------
// use the keywords struct or class

print("\n")
print("--------------------------------------------")
print("CREATING A STRUCTURE")
print("--------------------------------------------")
print()

//-----------------------------
// creating and structure

struct EmployeeStruct
{
    //------------------------
    // properties
    //------------------------
    var firstName = ""
    var lastName = ""
    
    //------------------------
    // property observer
    //------------------------
    var annualSalary = 0.0 {                    // property observer are called every time the value of the property is set
                                                // they are not call during initialization
        willSet{
            print("About to set annualSalary to \(newValue)")
        }// end willset
        
        didSet{
            if annualSalary > oldValue {
                print("\(firstName) got a raise")
                print()
            }else{
                print("\(firstName) did not get a raise")
                print()
            }//end if/else
        }// end did set
        
    }// end property observer
    
    //-----------------------
    // computed property
    //-----------------------
    var weeklySalary: Double{
        get{                                        //
            self.annualSalary / 52                  // self is the same idea as this in java
        }
        
        set{
            self.annualSalary = newValue * 52
        }
    }
    
    //-----------------------
    // custom initalizers (constructors for the java folks)
    //-----------------------
    init(){
        firstName = ""
        lastName = ""
        annualSalary = 0.0
    }
    
    init(firstName:String, lastName:String){
        self.firstName = firstName
        self.lastName = lastName
        annualSalary = 0.0
    }
    
    init(firstName:String, lastName:String, annualSalary: Double){
        self.firstName = firstName
        self.lastName = lastName
        self.annualSalary = annualSalary
    }
    
    //-----------------------
    // methods
    //-----------------------
    func fullName() -> String{
       return  firstName + " " + lastName           // here the return was optional because this func has only a single line of code
    }
    
                                                    // look at this
    mutating func giveRaise(amount:Double){         // by default you can not change the value of a property within a func in a struct
        self.annualSalary += amount                 // if you wish to do this you need to add the keyword mutating in front of the function
    }
    
    
}//end EmployeeStruct

//===================================================

print("\n")
print("--------------------------------------------")
print("USING A STRUCTURE")
print("--------------------------------------------")
print()

var structEmp1 = EmployeeStruct()
var structEmp2 = EmployeeStruct(firstName:"Isaac", lastName: "Newton")
var structEmp3 = EmployeeStruct(firstName: "Albert", lastName: "Einstein", annualSalary: 10_000)

structEmp1.giveRaise(amount: 1000)                                      // notice that the propery observer willSet and didSet will run

print("Name of employee2 = \(structEmp2.fullName()) ")
print()

print("Weekly annual salary of employee3 = \t \(structEmp3.annualSalary )" )       // using computed property
print("Weekly salary of employee3 = \t\t\t \(structEmp3.weeklySalary )" )          // using computed property
print()

print(String(format: "Weekly annual salary of employee3 = \t %.2f", structEmp3.annualSalary))           // output displayed with two digital places
print(String(format: "Weekly salary of employee3 = \t\t\t %.2f", structEmp3.weeklySalary))
print()

structEmp3.weeklySalary = 200                                                     // LOOK AT THE OUTPUT

print("Weekly annual salary of employee3 = \t \(structEmp3.annualSalary )" )      // using computed property
print("Weekly salary of employee3 = \t\t\t \(structEmp3.weeklySalary )" )         // using computed property
print()

//===================================================
// CREATING A CLASS
//===================================================
print("\n")
print("--------------------------------------------")
print("CREATING A CLASS")
print("--------------------------------------------")
print()

//-----------------------------
// creating and class

class Employee
{
    //------------------------
    // properties
    //------------------------
    var firstName = ""
    var lastName = ""
    
    //------------------------
    // property observer
    //------------------------
    var annualSalary = 0.0 {                    // property observer are called every time the value of the property is set
                                                // they are not call during initialization
        willSet{
            print("About to set annualSalary to \(newValue)")
        }// end willset
        
        didSet{
            if annualSalary > oldValue {
                print("\(firstName) got a raise")
                print()
            }else{
                print("\(firstName) did not get a raise")
                print()
            }//end if/else
        }// end did set
        
    }// end property observer
    
    //-----------------------
    // computed property
    //-----------------------
    var weeklySalary: Double{
        get{                                        //
            self.annualSalary / 52                  // self is the same idea as this in java
        }
        
        set{
            self.annualSalary = newValue * 52
        }
    }
    
    //-----------------------
    // custom initalizers (constructors for the java folks)
    //-----------------------
    init(){
        firstName = ""
        lastName = ""
        annualSalary = 0.0
    }
    
    init(firstName:String, lastName:String){
        self.firstName = firstName
        self.lastName = lastName
        annualSalary = 0.0
    }
    
    init(firstName:String, lastName:String, annualSalary: Double){             // LOOK AT THIS -> failable initialzer
        self.firstName = firstName
        self.lastName = lastName
        self.annualSalary = annualSalary
    
    }
 
    
 /*
    init?(firstName:String, lastName:String, annualSalary: Double){             // LOOK AT THIS -> failable initialzer
        self.firstName = firstName
        self.lastName = lastName
        self.annualSalary = annualSalary
        
        if self.annualSalary < 20000 {
            print("Failed to initialize")
            return nil
        }
    }
 */
    
    //-----------------------
    // methods
    //-----------------------
    func fullName() -> String{
       return  firstName + " " + lastName           // here the return was optional because this func has only a single line of code
    }
    
                                                    
    func giveRaise(amount:Double){
        self.annualSalary += amount
    }
    
    
}//end Employee Class

//===================================================
// USING A CLASS
//===================================================

print("\n")
print("--------------------------------------------")
print("USING A CLASS")
print("--------------------------------------------")
print()

var employee1 = Employee()
var employee2 = Employee(firstName:"Isaac", lastName: "Newton")
var employee3 = Employee(firstName: "Albert", lastName: "Einstein", annualSalary: 10_000)

employee1.giveRaise(amount: 1000)                                      // notice that the propery observer willSet and didSet will run

print("Name of employee2 = \(employee2.fullName()) ")
print()

print("Weekly annual salary of employee3 = \t \(employee3.annualSalary )" )        // using computed property
print("Weekly salary of employee3 = \t\t\t \(employee3.weeklySalary )" )           // using computed property
print()

print(String(format: "Weekly annual salary of employee3 = \t %.2f", employee3.annualSalary))           // output displayed with two digital places
print(String(format: "Weekly salary of employee3 = \t\t\t %.2f", employee3.weeklySalary))
print()

structEmp3.weeklySalary = 200                                                     // LOOK AT THE OUTPUT

print("Weekly annual salary of employee3 = \t \(employee3.annualSalary)" )      // using computed property
print("Weekly salary of employee3 = \t\t\t \(employee3.weeklySalary)" )         // using computed property
print()


//===================================================
// KEY-PATH EXPRESSIONS AS FUNCTIONS
//===================================================
print("\n")
print("--------------------------------------------")
print("KEY-PATH EXPRESSIONS AS FUNCTIONS")
print("--------------------------------------------")
print()

let companyEmployees = [employee1, employee2, employee3]        // creating an array of employees

var firstNames = companyEmployees.map(\.firstName)              // getting all the firstName property of each employee in the collection

print("Employees first names: \(firstNames)")


//===================================================
// ACCESS CONTROLS
//===================================================
// from Mastering Swift 5.3: Jon Hoffman
/*
Open:
 This is the most visible access control level. It allows us to use the property, method, class, and so on anywhere we want to import the module. Basically, anything can use an
 item that has an access-control level of open. Anything that is marked open can be subclassed or overridden by any item within the module they are defined in and any module
 that imports the module it is defined in. This level is primarily used by frameworks to expose the framework's public API. The open-access control is only available to classes
 and members of a class.

Public:
 This access level allows us to use the property, method, class, and so on anywhere we want to import the module. Basically, anything can use an item that has an access-control
 level of public. Anything that is marked public can be subclassed or overridden only by any item within the module they are defined in. This level is primarily used by
 frameworks to expose the framework's public API.
 
Internal:
 This is the default access level. This access level allows us to use the property, method, class, and so on in the module the item is defined in. If this level is used in a
 framework, it lets other parts of the framework use the item but code outside the framework will be unable to access it.
 
Fileprivate:
 This access control allows access to the properties and methods from any code within the same source file that the item is defined in.

Private:
 This is the least visible access-control level. It only allows us to use the property, method, class, and so on, within extensions of the declaration defined in the source
 file that defines it.
 
 */

print("\n")
print("--------------------------------------------")
print("ACCESS CONTROLS")
print("--------------------------------------------")
print()


