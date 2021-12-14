//===================================================
/*
 We will cover Swift's Class Inheritance 
 */
//===================================================

import UIKit

/*
//===================================================
// INHERITANCE STRUCTURE WE WILL BUILD
//===================================================

        PLANT
          |
          |
        TREE
        /   \
       /     \
      /       \
OAK TREE       PINE TREE

*/

//===================================================
// PLANT CLASS
//===================================================


class Plant {
    
    // static                               (does not belong to an instance of the class)
    //-------------------------------
    static var plantCounter = 0
    
    static func numberOfPlants() -> Void{
        print("The total of plants created is: \(plantCounter)" )
    }
    
    // properties
    //----------------------------
    var height = 0.0
    var age = 0
    
    var description: String{             // computed properties
        return "Base class is Plant"
    }
    
    // initializer
    //----------------------------
     init(){
        Plant.plantCounter += 1
        print("Creating a Plant")
    }
    
    // methods
    //----------------------------
    func growHeight(inches: Double){
        height += inches
    }
    
    func getDetails() -> String{
        let details = "Plant:getDetails -> height = \(height) \t age = \(age)"
        return details
    }
    
}// end Plant

//===================================================
// TREE CLASS
//===================================================

class Tree: Plant{                      // LOOK HERE -> this is how you establish inheritance between classes
                                        // named Plant
    
    // properties
    //----------------------------
    var limbs = 0
    
    
    override var description: String{             // override computed properties
        return "\(super.description) I am a Tree class"
    }
    
    // initializer
    //----------------------------
    override init(){
        print("Creating a Tree")
    }
    
    // methods
    //----------------------------
    func limbGrow(){
        self.limbs += 1
    }
    
    func limbFall(){
        self.limbs -= 1
    }
    
    
    override func getDetails() -> String{                           // notice the keyword override (OVERRIDEN METHOD)
                
                var details =  super.getDetails()                   // calling the tree's superclass (Plant) getDetail()
                details =  details + " Tree -> limbs = \(limbs) "
                
                return details
    }
    
    
}// end Tree


//===================================================
// PINE CLASS
//===================================================
class PineTree: Tree{
    
    // properties
    //----------------------------
    var needles = 0
    
    // initializer
    //----------------------------
    override init(){
        print("Creating a PineTree")
    }
    
    // methods
    //----------------------------
    func needleGrow() -> Void{
        needles += 1                            // notice this was not used
    }
    
    
    func needleFall() -> Void{
        if needles > 0{
            needles -= 1                        // notice this was not used
        } else{
            print("Pine Tree does not have any needle to fall out")
        }
    }
    
    
    override func getDetails() -> String{                           // notice the keyword override (OVERRIDEN METHOD)
                
                var details =  super.getDetails()                   // calling the tree's superclass (Plant) getDetail()
                details =  details + " Pine Tree -> needles = \(needles) "
                
                return details
    }
    
    
}

//===================================================
// TREE CLASS
//===================================================
class OakTree: Tree{
    
    // properties
    //----------------------------
    var leaves = 0
    
    // initializer
    //----------------------------
    override init(){
        print("Creating a OakTree")
    }
    
    // methods
    //----------------------------
}



//===================================================
// USING CLASS
//===================================================


print("\n")
print("--------------------------------------------")
print("USING CLASSES")
print("--------------------------------------------")
print()


Plant.numberOfPlants()                  // talking to the Class calling a static function
print()

print("-------------------------------")
print("Working with tree instance")
print("-------------------------------")
print()

var plant = Plant()
print("\(plant.description)")           // calculated property
print("\(plant.getDetails() )")         // calling a function of plant instance

plant.growHeight(inches: 10)            // changing height property

print("\(plant.getDetails() )")         // calling a function of plant instance

// plant.numberOfPlants()               // THIS IS AN ISSUE
                                        // plant is an instance of the Plant it does not have this function
                                        // because this function is static

Plant.numberOfPlants()


print()
print("-------------------------------")
print("Working with tree instance")
print("-------------------------------")

var tree = Tree()           // LOOK AT THE OUTPUT notice that plants init() was called
print()

Plant.numberOfPlants()


print("\(tree.description)")           // calculated property
print("\(tree.getDetails() )")         // calling a function of tree instance

tree.growHeight(inches: 20)            // changing height property

for _ in 1...10 {                      // LOOK AT THE USE OF _ IN THIS FOR LOOP
    tree.limbGrow()
}


print("\(tree.getDetails() )")         // calling a function of tree instance



print()
print("-------------------------------")
print("Working with Pine Tree instance")
print("-------------------------------")
var pineTree = PineTree()           // LOOK AT THE OUTPUT notice that plants init() was called
print()

Plant.numberOfPlants()


print("\(pineTree.description)")           // calculated property
print("\(pineTree.getDetails() )")         // calling a function of tree instance

pineTree.growHeight(inches: 20)            // changing height property

for _ in 1...10 {
    pineTree.limbGrow()
    pineTree.needleGrow()
}

print("\(pineTree.getDetails() )")         // // calling a function pine tree's getDetails()



print()
print("-------------------------------")
print("Working with Oak Tree instance")
print("-------------------------------")
var oakTree = OakTree()           // LOOK AT THE OUTPUT notice that plants init() was called
print()

Plant.numberOfPlants()


print("\(oakTree.description)")           // calculated property
print("\(oakTree.getDetails() )")         // calling a function of tree instance

oakTree.growHeight(inches: 20)            // changing height property

for _ in 1...20 {
    oakTree.limbGrow()
//    oakTree.needleGrow()               // THIS IS AN ISSUE WHY
}

print("\(oakTree.getDetails() )")        // calling a function tree's getDetails()

