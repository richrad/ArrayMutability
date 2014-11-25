class ArrayContainer {
    
    var mutableArray: [Int]
    let immutableArray: [Int]
    
    init(anMutableArray: [Int], anImmutableArray: [Int]) {
        //While you're inside the init function, the mutability isn't yet baked into the variable. You can assign and reassign values to both arrays all you want:
        
        self.mutableArray = [4,5,6]
        self.immutableArray = [7,8,9]
        self.immutableArray = [9,10,11]
        
        //Of course you probably want to assign them the values given in the function parameters:
        self.mutableArray = anMutableArray
        self.immutableArray = anImmutableArray
    }
    
    func tryToChangeTheImmutableArray() {
        //Outside of init function, the immutable values are fixed. Uncommenting this line will give you an error:
        
        //self.immutableArray = [0,1,2]
    }
    
}

let arrayContainer = ArrayContainer(anMutableArray: [0,1,2], anImmutableArray: [0,1,2])

//The mutable values we assigned can still be changed:
arrayContainer.mutableArray[0] = 2
arrayContainer.mutableArray[1] = 0
arrayContainer.mutableArray[2] = 1
println("\(arrayContainer.mutableArray)")

//However, you can't change the _type_ of the values stored in the array
//Uncomment the following line and you'll get the error "String" is not convertible to "Int"

//arrayContainer.mutableArray[0] = "string"


//The values in the immutable array are now fixed as well. Uncommenting any of these lines will give you an error:

//arrayContainer.immutableArray[0] = 2
//arrayContainer.immutableArray[1] = 0
//arrayContainer.immutableArray[2] = 1

