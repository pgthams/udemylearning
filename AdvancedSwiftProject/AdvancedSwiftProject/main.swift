//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Thamaraiselvi Parasur Gajapathy on 11/5/22.
//

import Foundation


//*** CLASS - Reference Type
let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")

//print (classJames.name)

//*** STRUCT - VALUE Type
/* let */   var structJames = MusicianStruct(name: "John", age: 60, instrument: "Flute")

//print (structJames.name)


//*** I CAN change/override the "age" in CLASS like below but CANNOT in struct

classJames.age = 51
//print(classJames.age)

//***  I CANNOT change/override the "age" in STRUCT like below but CAN CHANGE in class

//*** Soln = Since age is declared as 'var' inside Musician Struct ,we need to declare var instead of let in line 17 so the line 30,31 works
structJames.age = 61
//print(structJames.age)

//*** REFERENCE vs VALUE   ************* NEW SECTION ******************

let copyOfClassJames = classJames

var copyOfStructJames = structJames

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

copyOfClassJames.age = 52
copyOfStructJames.age = 62

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//print(classJames.age)
//print(structJames.age)

//*** Reference types --> Class
//*** Copy --> Same Object new reference

//*** Value types --> Struct
//*** Copy --> new object -> 2O Objects


//Function vs Mutating Function   ************* NEW SECTION ******************

//print(classJames.age)
classJames.toCheckClass()
//print(classJames.age)

//print(structJames.age)
structJames.toCheckStruct()
//print(structJames.age)


//TUPLE      ************* NEW SECTION ******************
//They are like arrays

let myTuple = (1,3)
//print(myTuple.0)
//print(myTuple.1)

  var myTuple1 = (1,3,5)     //let
myTuple1.2 = 10        //u wil c err "Cannot assign to property: 'myTuple1' is a 'let' constant" so change line #76 from 'let' to 'var'
//print (myTuple1.2)

 
  
let myTuple3 = ("Thams",100)

let myTuple4 = (10,[10,20,30])
//print(myTuple4.1[1])

let myString : String?

let predefinedTuple : (String,String)
predefinedTuple.0 = "Thams"
predefinedTuple.1 = "Sel"
//print (predefinedTuple)

let myTuple5 = (name:"James", status: true)//assign values to key
//print(myTuple5.name)

//Guard Let vs If Let

// Guard --> negative && Confident
//If --> Positive

let myNum = "5"
let myWord = "Apple"

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput)
        else
    {
        return 0
    }
    return myInteger
}

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput){
        return myInteger
    }else
    {
        return 0
    }
}

//print (convertToIntegerIf(stringInput: myNum))
//print (convertToIntegerGuard(stringInput: myNum))

// Switch case
/*
let myVal = 11

let myRemainder = myVal %
print (myRemainder)
/*if (myRemainder == 1)
{
    print ("Its 1")
}
else if (myRemainder == 2)
{
    print ("Its 2")
}
else if (myRemainder == 3)
{
    print ("Its 3")
}*/

switch myRemainder {
case 1:
    print ("Its 1")
case 2:
    print ("Its 2")
case 3:
    print ("Its 3")
default :
    print ("none of the above")
}*/

//Breakpoints
 
var x = 5

print (x)

x += 1

print (x)

table
