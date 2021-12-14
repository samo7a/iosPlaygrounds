//===================================================
/*
 We will cover Swift Arrays  in this playground
 */
//===================================================

import UIKit



//------------------------------------
// CREATING AND INITIALIZING ARRAYS
//------------------------------------

print("\n")
print("--------------------------------------------")
print("CREATING AND INITIALIZING ARRAYS")
print("--------------------------------------------")
print()

// creating an immutable array

let arrayOfSimpleOdds = [ 1, 3, 5]                  // notice that Swift can infer the type of the entries of the array

// creating a muttable array

var arrayOfSimpleEvens = [2, 4, 6, 8]               // notice that Swift can infer the type of the entries of the array


// creating empty arrays
// here you have tell Swift what type the array will store
var arrayOfInteger = [Int]()


var anotherArrayOfInteger: [Int] = []               // another way to explicitly decare the type of the array

//--------------------------------------
// USING ANY, ANYOBJECT ALIASES
//--------------------------------------
// if you wish to have an array that can store objects of different types use can use Any aliases
// use this sparingly. If you are going to store multiple types and a single unit it's best to use to tuples

var myGoodies: [Any] = [ 1, "Hello", 3.21, "Miami"]

//--------------------------------------

var arrayOfZeros = [Int](repeating: 0, count: 10)  // creating an array with the same enties multiple times

print()
for index in  0...9{
    print( String(arrayOfZeros[index] ) , terminator: " " )         // this will not print a newline
}
print("\n")


//------------------------------------
// MULTI-DIMENSIONAL ARRAYS
//------------------------------------
// multi-dimensional array are just array within arrays

print("\n")
print("--------------------------------------------")
print("MULTI-DIMENSIONAL ARRAYS")
print("--------------------------------------------")
print()


// 1-dimensional
var nums = [10, 21, 3, 43, 83, 382]

print("nums = \(nums)")

print("nums[0] = \(nums[0])" )
print()

// 2-dimensional
var nums2D = [ [10, 21, 3] , [1, 5, 9], [3, 8, 13] ]

print("nums2D =  \( nums2D )" )

/*
    outer array of nums2D -> [ ]
    element of outer array -> [10, 21, 3] , [1, 5, 9], [3, 8, 13]       // notice each element is an array
                    nums2D[1] = [1, 5, 9]
                    nums2D[1][0] = 1
                    nums2D[1][1] = 2
 
 */

print("nums2D[0] =  \( nums2D[0] )" )
print("nums2D[1] =  \( nums2D[1] )" )
print("nums2D[2] =  \( nums2D[2] )" )
print()

print("nums2D[1][0] =  \( nums2D[1][0] )" )
print("nums2D[1][1] =  \( nums2D[1][1] )" )
print("nums2D[1][2] =  \( nums2D[1][2] )" )
print()

// 3-dimensional
var nums3D = [ [  [ [10, 21, 3], [1, 5, 9] ], [ [3, 8, 13], [7, 18, 23] ], [ [20, 60, 88], [33, 74, 12] ]   ] ]

/*
var nums3D = [   [     [    [10, 21, 3] , [1, 5, 9]     ]  ,
                       [    [3, 8, 13]  , [7, 18, 23]   ] ,
                       [    [20, 60, 88], [33, 74, 12]  ]   ]  ]
 
                                  0                              1                               2
 nums3D[0]  = [     [ [10, 21, 3] , [1, 5, 9] ]  ,[  [3, 8, 13]  , [7, 18, 23] ] , [ [20, 60, 88], [33, 74, 12] ]   ]
 
                         0             1
 nums3D[0][2]  =  [ [20, 60, 88], [33, 74, 12] ]
 
                      0   1   2
 nums3D[0][2][1]  = [33, 74, 12]
 
 nums3D[0][2][1][0] = 33
*/

print( "nums3D = \( nums3D)")
print()
print( "nums3D[0] = \( nums3D[0])")
print()
print( "nums3D[0][2] = \( nums3D[0][2])")
print()
print( "nums3D[0][2][1] = \( nums3D[0][2][1])")
print()
print( "nums3D[0][2][1][0] = \( nums3D[0][2][1][0])")
print("\n")

//------------------------------------
// ARRAY UTILITIES
//------------------------------------

print("\n")
print("--------------------------------------------")
print("ARRAY UTILITIES ")
print("--------------------------------------------")
print()


print("nums = \(nums)")

// get the number of elements in the array
print("Number of element in nums:\t \(nums.count) ")

// checking if the array is empty
print("Is nums empty:\t \(nums.isEmpty) ")
print()

var testArray = [Int]()
print("Is testArray empty:\t \(testArray.isEmpty) ")
print("\n")

//--------------------------------
// Shuffling an array
//--------------------------------
print("Shuffling an array")
print("---------------------------")

print("nums = \(nums)")

nums.shuffle()                  // shuffling the array nums

print("nums = \(nums)")

// shuffle() vs shuffled()

let suffledNums = nums.shuffled()           // the shuffled() returns a copy of the shuffled nums array
                                            // shuffle() does not create a new array is just shuffles the elements of an array
print("suffledNums = \(suffledNums)")
print("\n")

//--------------------------------
// appending an array
//--------------------------------
print("Appending an Array")
print("---------------------------")

var values = [1, 2, 3]
print("values = \(values) ")
    
values.append(4)                        // add an element to  the end of the array
print("values = \(values) ")

values += [5, 6, 7]                     // another to append an array using the += operator
print("values = \(values) ")

values += [Int](repeating: 8, count: 4)
print("values = \(values) ")
print()

// inserting into an array
print("Inserting into an Array")
values.insert(100, at: 5)
print("values = \(values) ")
print("\n")

//--------------------------------
// Removing from an array
//--------------------------------
print("Removing from an Array")
print("---------------------------")

print("nums = \(nums)")

nums.removeLast()                     // remove the last element from the array
print("nums = \(nums)")

nums.removeFirst()                     // remove the first element from the array
print("nums = \(nums)")

nums.remove(at: 2)                     // remove element at index 2 from the array
print("nums = \(nums)")

nums.removeAll()                     // remove all elements from the array
print("nums = \(nums)")

if nums.isEmpty {
    print("The array is empty")
}

print("\n")

//--------------------------------
// Merging  Arrays
//--------------------------------
// to merge two arrays they must have the same dimensions
print("Merging Arrays")
print("---------------------------")

// 1-dimensional
var oneDimArray1 = [Int](repeating: 4, count: 10)
var oneDimArray2 = [Int](repeating: 6, count: 15)

print("oneDimArray1 = \(oneDimArray1)")
print("oneDimArray2 = \(oneDimArray2)")


var mergedOneDimArray = oneDimArray1 + oneDimArray2              // merging 1-dimensional arrays using the + operator
print("mergedOneDimArray = \(mergedOneDimArray)")
print()

// 2-dimensional
var twoDimArray1 = [ [10, 21, 3, 4] , [1, 5, 9, 3], [3, 8, 13, 7] ]
var twoDimArray2 = [ [34, 1, 2, 4] , [2, 2, 6, 4], [3, 4, 9, 1] ]


print("twoDimArray1 = \(twoDimArray1)")
print("twoDimArray2 = \(twoDimArray2)")

var mergedTwoDimArray = twoDimArray1 + twoDimArray2             // merging 2-dimensional arrays using the + operator
print("mergedTwoDimArray = \(mergedTwoDimArray)")
print()


// issue here merging wrong dimension arrays
// var mergedArray = oneDimArray1 + twoDimArray1                // you will get an error here
print("\n")


//---------------------------------------
// Retrieving a Subarray from an Arrays
//---------------------------------------
print("Retrieving a Subarray from an Arrays")
print("---------------------------------------")

var names = ["Oliver", "Hazel", "Felix", "Alexander", "Luna", "Claire", "Jane", "Luke", "Edwards" ]
print("names = \(names)" )
print()

print("names [2..4] = \(names [2...4] ) ")          // get the names from index 2 to 4
print("names [2..4] = \(names [2..<4] ) ")

print()
print("names [...4] = \(names [...4] ) ")
print("names [..<4] = \(names [..<4] ) ")
print("names [2...] = \(names [2...] ) ")
print("\n")

//---------------------------------------
// Sorting an Arrays
//---------------------------------------
print("Sorting an Arrays")
print("---------------------------------------")

var numbers = [2.3 , 37, 27.2, -4.2, 2, 100, -462, 84.2, -482.4, 1, 1, -3, 7 ]

print("numbers = \(numbers)" )
print("names = \(names)" )
print()

numbers.sort()                      // sorting an array by ascending order
names.sort()                        // sorting an array by ascending order
print("numbers = \(numbers)" )
print("names = \(names)" )
print()

numbers.sort(){ $0 < $1}            // sorting an array by descending order using closure
names.sort(){ $0 < $1}              // sorting an array by descending order using closure
print("sort(){ $0 < $1} ")
print("numbers = \(numbers)" )
print("names = \(names)" )
print()

numbers.sort(){ $0 > $1}            // sorting an array by ascending order using closure
names.sort(){ $0 > $1}              // sorting an array by ascending order using closure
print("sort(){ $0 > $1}")
print("numbers = \(numbers)" )
print("names = \(names)" )
print()

numbers.sort(by: >)                // sorting an array by aescending order using > operator
names.sort(by: >)                  // sorting an array by ascending order using > operator
print("sort(by: >)")
print("numbers = \(numbers)" )
print("names = \(names)" )
print()

numbers.sort(by: <)                // sorting an array by descending order using > operator
names.sort(by: <)                  // sorting an array by descending order using > operator
print("sort(by: <) ")
print("numbers = \(numbers)" )
print("names = \(names)" )
print()


var sortedNames = names.sorted()  // created a new array from sorting an array using sorted()
                                  // sorted() and sort() are different
                                  // sort() just sorts an array
                                  // sorted() sorts an array and returns a copy of it
print("sortedNames = \(sortedNames)")
print("\n")


//---------------------------------------
// Filtering an Arrays
//---------------------------------------
// Filtering an Arrays returns a copy of an array with the elements that satisfied the filter

print("Filtering an Arrays")
print("---------------------------------------")


let states = [ "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut",
               "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
               "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan",
               "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire",
               "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma",
               "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee",
               "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming" ]

print()
print("States")
print("--------------------------------")
print(" \(states) ")



var filteredStates = states.filter{$0.range(of: "l") != nil}            // filter out all the states that contain an "l"

print()
print("Filtered States - contain -> l")
print("--------------------------------")
print(" \(filteredStates) ")


var filteredStates2 = states.filter{$0.range(of: "c") != nil}            // filter out all the states that contain an "c"

print()
print("Filtered States - not containing -> c")
print("--------------------------------")
print(" \(filteredStates2) ")






// numbers = [2.3 , 37, 27.2, -4.2, 2, 100, -462, 84.2, -482.4, 1, 1, -3, 7 ]

let filterValues = numbers.filter{$0 < 0  && $0 > -470}
print()


print("numbers = \(numbers)")
print()
print("Filtered numbers - {$0 < 0  && $0 > -470}")
print("--------------------------------")
print(" \(filterValues) ")
print("\n")




//------------------------------------
// Map
//------------------------------------
// this is not the map data structure
// map  applies logic to the elements of an array

print("--------------------------------------------")
print("Map")
print("--------------------------------------------")
print()

// numbers = [2.3 , 37, 27.2, -4.2, 2, 100, -462, 84.2, -482.4, 1, 1, -3, 7 ]
print("numbers = \t\t \(numbers)")
print()
var mapNumbers = numbers.map{ $0 + 10}

print("mapNumbers = \t \(mapNumbers)")
print()

let indices = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var headers = indices.map{ "\( $0 ) -> "}

print( "indices = \(indices)" )
print("headers = \(headers)")
print("\n")

//------------------------------------
// COUNT
//------------------------------------

print("--------------------------------------------")
print("COUNT")
print("--------------------------------------------")
print()

// numbers = [2.3 , 37, 27.2, -4.2, 2, 100, -462, 84.2, -482.4, 1, 1, -3, 7 ]
print("numbers = \t\t \(numbers)")
print()

let numberOfElements = numbers.count
let upperValueCount = numbers.filter{ $0 >= 10}.count
let middleValueCount = numbers.filter{ $0 < 10 && $0 >= -2}.count
let lowerValueCount = numbers.filter{ $0 < -2 }.count

print("Count of numberOfElements  = \(numberOfElements) ")
print("Count in upperValueCount range = \(upperValueCount) ")
print("Count in middleValueCount range = \(middleValueCount) ")
print("Count in lowerValueCount range = \(lowerValueCount) ")



//------------------------------------
// FOREACH && ITERATING
//------------------------------------

print("--------------------------------------------")
print("FOREACH && ITERATING")
print("--------------------------------------------")
print()

var values1 = [ 1, 2, 3, 4, 5, 10, 20, 30, 40, 50]

print("foreach")

values1.forEach{print( $0) }                            // print each element in the array

print()

print("Iterating")
for currentItem in values1{
    print(currentItem)
}

print()


print("values1 = \(values1)")
print()

// this is good for debugging
for (index, currentItem) in values1.enumerated(){
    print("Index: \(index) \t value: \(currentItem)")
}

