import UIKit


//===================================
// working with as, as? and as!
//===================================

/*
====================================================================
IMPORTANT
 ---------
When you upcast, you cast from a subclass to a superclass (upwards)
When you downcast, you cast from a superclass to a subclass (downwards)
====================================================================
*/


class MediaItem{
    var name:String
    init(name: String){
        self.name = name
    }
}


class Movie: MediaItem{
    var director: String
    init(name:String, director: String){
        self.director = director
        super.init(name: name)
    }
}

class Song:MediaItem{
    var artist: String
    init(name: String, artist: String){
        self.artist = artist
        super.init(name: name)
    }
    
}



let library = [
    Movie(name:"Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes",  artist: "Elvis Preley"),
    Movie(name:"Casablanca", director: "Michael Curtiz"),
    Song(name: "The One and Only",  artist: "Chesney Hawkes"),
    Song(name: "Never Gonna You Up",  artist: "Rick Astley")
]


/*
==============================================================
 type check operator (is) to check whether an instance
 is of a certain subclass type.
 =============================================================
 */

var movieCount = 0
var songCount  = 0

for item in library {
    if item is Movie {
        movieCount += 1
    }else if item is Song{
        songCount += 1
    }
}

print("Media library contain \(movieCount) movies and \(songCount) songs")


/*
==============================================================
To downcast to the subclass type with a type cast operator
(as? or as!).
 
 Use the conditional form of the type cast operator (as?) when
 you aren’t sure if the downcast will succeed. This form of
 the operator will always return an optional value, and the
 value will be nil if the downcast was not possible.
 
 Use the forced form of the type cast operator (as!) only when
 you are sure that the downcast will always succeed. This form
 of the operator will trigger a runtime error if you try to
 downcast to an incorrect class type.
 =============================================================
 */



for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}


print("\n\n")

/*
==============================================================
Type Casting for Any and AnyObject
 
 
 Any can represent an instance of any type at all, including function types.
 AnyObject can represent an instance of any class type.

 
 =============================================================
 */
print("Type Casting for Any and AnyObject \n")

var things: [Any] = []

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })


for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}



// The Any type represents values of any type, including optional types.


let optionalNumber: Int? = 3
things.append(optionalNumber)        // Warning
things.append(optionalNumber as Any) // No warning

















