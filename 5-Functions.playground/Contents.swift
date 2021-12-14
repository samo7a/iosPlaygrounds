//===================================================
/*
 We will cover Swift's functions in this playground
 This is an important playground to understand
 Especially if you're only programmed Java
 */
//===================================================

import UIKit



//------------------------------------
// SINGLE-PARAMETER FUNCTION
//------------------------------------
// to declare a function in swift use the keyword func

print("\n")
print("--------------------------------------------")
print("SINGLE-PARAMETER FUNCTION")
print("--------------------------------------------")
print()

//----------------------------------------------------------

// format of function
// func nameOfFunction( inputParameterName : TYPE) -> RETURN TYPE


func printSomeText(text:String) -> Void {                                       // notice the return type Void starts with a captial V
    print("Running printSomeText(text:String) -> Void")
    print("This is the text you wish to print to the console: \(text)")         // here we have a local parameter name "text"
    print()
}


// caling the function
printSomeText(text: "Hello I am learn to use function in Swift")                // notice that that the function's local parameter name is used

// printSomeText("More text to print to the console")                           // THIS IS AN ISSUE -> missing local parameter name
 
//----------------------------------------------------------

func simpleFunction(dayOfTheWeek: String){                                      // the Void keyword is optional
    print("Running simpleFunction(dayOfTheWeek: String)")
    print("Today is \(dayOfTheWeek)")
    print()
}

print(simpleFunction(dayOfTheWeek: "Tuesday"))
print()

//----------------------------------------------------------

func optionsToChoose(dressing: String = "Oil") -> Void {
    print("Running optionsToChoose(dressing: String = \"Oil\") -> Void")
    print(" You picked  \(dressing) as salad dressing")
    print()
}

optionsToChoose()                                                               // notice you do not need to put a value because of the default value
optionsToChoose(dressing: "Balsamic Vinegar")                                   // You can still use the local parameter name
// optionsToChoose("Balsamic Vinegar")                                          // THIS IS ISSUE


//----------------------------------------------------------


// DEALING WITH RETURN TYPES
print("---------------------------")
print("DEALING WITH RETURN TYPES")
print("---------------------------")


func doubleCounter(counter: Int ) -> Int{                                       // notice the return type is an Int
    print("Running doubleCounter with input \(counter)")
    return 2 * counter
}

var counterValue = doubleCounter(counter: 20)                                   // using the function return to initialize variable
print("The counter has been double to: \(counterValue)")
print()

//----------------------------------------------------------


// LOOK AT THIS
_ = doubleCounter(counter: 100)                                                 // the underscore tell the compiler you know
                                                                                // of the return type but you wish to not use it
                                                                                // you can dropped the return for a function
                                                                                // you do not need to assign it to a constant of variable
    
// ON SINGLE EXPRESSION FUNCTION YOU CAN OMIT THE RETURN
func saySomeThing(words: String) -> String{                                     // notice that the keyword return was not used
    "My words are: "  + words                                                   // single expression no other code in the function
}

var spokenWords = saySomeThing(words: "Hello my friend you been on a long journey to get here")     //
print(spokenWords)
print()

//----------------------------------------------------------

print("--------------------------------------------")
print("MULTI-PARAMETER FUNCTIONS AND DEFAULT VALUES")
print("--------------------------------------------")


// simple multi-parameter function
func multInputFunction(intValue: Int, doubleValue: Double, stringValue:String) {                    // Void is optional
    
    print("Running multInputFunction(intValue: Int, doubleValue: Double, stringValue:String)")
    let result = intValue * Int(doubleValue) * stringValue.count
    
    print("The result = \(result)")
    print()
}

multInputFunction(intValue: 4, doubleValue: 5.3, stringValue: "Miami")


//------------------------------------------------
// multi-parameter function with default value
//------------------------------------------------

// IMPORTANNT
// when you are declaring a function with multi paramters with default values you only need to call the function with the
// values you wish to override
// stacking the parameters

// all parameter have default values assigned

func calculateFuelMixture(temperature: Double = 82.3,
                          atmosphericPressure: Double = 29.9,
                          timing: Int = 7,
                          fuelType: String = "VP-T4") -> Void {
    
    print("Running calculateFuelMixture(...)")
    
    print("temperature = \(temperature)")
    print("atmosphericPressure = \(atmosphericPressure)")
    print("timing = \(timing)")
    print("fuelType = \(fuelType)")
    print()

}// end calculateFuelMixture

// notice all of these will work because all parameter have default values
/*
calculateFuelMixture()
calculateFuelMixture(temperature: 45.2)
calculateFuelMixture(temperature: 45.2, atmosphericPressure: 35.3)
calculateFuelMixture(temperature: 45.2, atmosphericPressure: 35.3, timing: 6)
calculateFuelMixture(temperature: 45.2, atmosphericPressure: 35.3, timing: 6, fuelType: "VP-4.4")*/
//------------------------------------------------

// not all parameters have default
func calculateAirMixture(temperature: Double = 82.3,
                          atmosphericPressure: Double,
                          timing : Int = 7,
                          humidity : Double) -> Void {
    
    print("Running calculateFuelMixture(...)")
    
    print("temperature = \(temperature)")
    print("atmosphericPressure = \(atmosphericPressure)")
    print("timing = \(timing)")
    print("humidity = \(humidity)")
    print()

}// end calculateAirlMixture

/*
_ = calculateAirMixture()                                                           // THIS IS AN ISSUE -> missing arguments: atmosphericPressure and humidity
_ = calculateAirMixture(atmosphericPressure: 43.2)                                  // THIS IS AN ISSUE -> missing arguments: humidity
 _ = calculateAirMixture(temperature: 43.2, atmosphericPressure: 1232, timing: 7)
 */

calculateAirMixture(atmosphericPressure: 93.2, humidity: 67.2)                                  // this works
calculateAirMixture(temperature: 43.2, atmosphericPressure: 1232, humidity: 55.3)               // this works
calculateAirMixture(temperature: 43.2, atmosphericPressure: 1232, timing: 6, humidity: 55.3)    // this works

//------------------------------------------------


// RETURNING MULTIPLE VALUES FROM FUNCTION
print("--------------------------------------------")
print("RETURNING MULTIPLE VALUES FROM FUNCTION")
print("--------------------------------------------")
// the must common way to return multiple values from a function
// is to embed the values into a array, dictionary or tuple
// and then return this collection object


//------------------------------------------------
// function returning an array
func generateNumbers(howManyNumber: Int) -> [Int]{
    
    var finished = false
    var counter = 0
    var numbers:[Int] = []
    
    while !finished{
        if counter < howManyNumber{
            numbers.append(Int.random(in: -100...100))                // generating an Integer between -100 to 100
            counter += 1                                             // IMPORTANT -> you are not allow the counter++ or counter-- has been removed in Swift 3
        } else{
            finished = true
        }//end if/else
        
    }// end while
    
    return numbers
}//generateNumbers

var rndNumbers = generateNumbers(howManyNumber: 20)                 // notice swift infers the type
print("rndNumbers = \(rndNumbers)")
print()

//------------------------------------------------

//function returning and tuple

func dataAggregator(firstName:String = "NA",
                    lastName:String = "NA",
                    age: Int = -1,
                    id: String = "000000") -> (firstName:String,
                                               lastName:String,
                                               age:Int,
                                               id: String,
                                               rnd: Int){
        print("Running dataAggregator")
        let randomNumber = Int.random(in: 0...2000000)

        let personalData = (firstName, lastName, age, id, randomNumber)
    
        return personalData
}// end dataAggregator

print("dataAggregator result with defaults = \(dataAggregator())" )
print()

print("dataAggregator result with defaults = \(dataAggregator(firstName: "John", lastName: "Doe", age: 31, id: "123456") )" )
print()



//------------------------------------------------

// RETURNING NIL FROM FUNCTION
print("--------------------------------------------")
print("RETURNING NIL FROM FUNCTION")
print("--------------------------------------------")
// to return nil from a function you need to use optionals


// THIS IS AN ISSUE
/*
 
 func simpleFunction() -> String{
    return nil
 }
 
*/

// fix
func simpleFunction() -> String?{                               // returning and option String can take the value nil
   return nil
}
print()

// EXTERNAL PARAMETER NAMES IN FUNCTION                         // LOOK AT THIS
print("--------------------------------------------")
print("EXTERNAL PARAMETER NAMES IN FUNCTION")
print("--------------------------------------------")
// you can add external names to the function to make the function more readable to its users

// without external name
func cookRecipe(dish: String,
                temp: Int,
                duration: String,
                time: String){
    
    
            print("Running cookRecipe ")
            print("dish: \t\t \(dish)")
            print("temp: \t\t \(temp)")
            print("duration: \t \(duration) ")
            print("time: \t\t \(time)")
}

cookRecipe(dish: "Lasagna", temp: 350, duration: "120 minutes", time: "5:00pm")
print()


//------------------------------------------------

// pattern
// func funcName( (Optional)ExternalName localName: type ) -> returnType
                                                                                        // LOOK AT THE DIFFERENCES BETWEEN METHODS
func cookOtherRecipe(dish: String,
                     withTemp temp: Int,
                     for duration: String,
                     at time: String){

            print("Running cookOtherRecipe ")
            print("dish: \t\t \(dish)")
            print("temp: \t\t \(temp)")
            print("duration: \t \(duration) ")
            print("time: \t\t \(time)")
}

cookOtherRecipe(dish: "Lasagna", withTemp: 350, for: "120 minutes", at: "5:00pm")
print()


//------------------------------------------------


// USING VARIADIC PARAMETER IN FUNCTION                         // LOOK AT THIS
print("--------------------------------------------")
print("USING VARIADIC PARAMETER IN FUNCTION")
print("--------------------------------------------")
// varidadic parameters let you use 0 or more values

func pricesToAvg(month:String, prices:Double...) -> Double{
    
    var sum = 0.0
    var n = 0.0
    for currentPrice in prices{
        sum += currentPrice
        n += 1
    }
    
    let avg = sum/n
    
    return avg
}

var avgPrice = pricesToAvg(month: "November", prices: 2.50)
print("Average Price = \(avgPrice)")

avgPrice = pricesToAvg(month: "November", prices: 2.50, 2.38, 1.99, 3.26)
print("Average Price = \(avgPrice)")
print(String(format: "Average Price = %.2f", avgPrice))                         //  formatting the output of the avg price to 2 decimal places
print()

//------------------------------------------------


// INOUT PARAMETERS IN FUNCTION                             // LOOK AT THIS
print("--------------------------------------------")
print("INOUT PARAMETERS IN FUNCTION   ")
print("--------------------------------------------")
// when a parameter is labeled as inout parameter changes to the parameter within
// the function will persist after the function call in completed
// keyword inout

var firstValue = 100
var secondValue = 200

// see the use of the keyword inout
func swap(firstInput:inout Int, secondInput: inout Int) -> Void{
    let tmp = firstInput
    firstInput = secondInput
    secondInput = tmp
}

print()
print("Before swap is called")
print("firstValue = \t \(firstValue)")
print("secondValue = \t \(secondValue)")
print()

swap(firstInput: &firstValue, secondInput: &secondValue)           // NOTICE THE USE OF &
print("After swap is called")
print("firstValue = \t \(firstValue)")
print("secondValue = \t \(secondValue)")
print()


//------------------------------------------------


// OMITTING ARGUMENTS LABELS IN FUNCTION                            // LOOK AT THIS
print("--------------------------------------------")
print("OMITTING ARGUMENTS LABELS IN FUNCTION   ")
print("--------------------------------------------")
// you can omit labels for a parameter if you use _  (underscore)
// when you do this you are telling the user of the fuction not to use the label

func setACTemperature(_ unit: Int,
                      _ currentTemp: Double,
                      thermostatValue: Double = 77.5 ) -> Bool{
    
            print("Running setACTemperature")
            print("unit =\t\t\t\t \(unit)")
            print("currentTemp =\t\t \(currentTemp)")
            print("thermostatValue =\t \(thermostatValue)")
    
    return true
}

var wasSet = setACTemperature(1, 78.3 )                                         // no label and using the default value of thermostatValue

_ = setACTemperature(2, 78.3, thermostatValue: 76.2 )

// _ = setACTemperature(unit: 3, currentTemp: 92.2, thermostatValue: 82.2 )     // THIS IS AN ISSUE
