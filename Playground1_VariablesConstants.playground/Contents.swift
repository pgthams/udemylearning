import UIKit

//variables-var & constants-let *****************
/*var greeting = "Hello, playground"
var x=4,y=3,z1=2
let z=x+y
print (z)

var userName = "James"
print(userName)

userName = "John"  //dont have to declare it again as it is declared earlier in line number 9
print(userName)

let age=100 //int
let age1=100.0   //to convert age to double to match pi mention as 100.0
//what is constant? it is something static like below
let pi=3.14 //double

//age*pi  //uncomment and run it will throw error
age1*pi //both are double so works fine
*/
// Variable types ****************  PART 1 **********
//String
var userName = "JAMES"
userName.lowercased()

//integer
let usrAge = 50
let mon = 4
usrAge/mon

//double
let pil=50.0
var sun=4.0
pil/sun

//boolean

var boolOne=false
boolOne=true

// Variable types ****************  PART 2 **********

var firstName : String = "James"

let secondName = String(20)

let firstnumber : Int = 50

let thirdName : String = String(40)

//define

var myNameOne : String

//Initialization   //Mutable and Immutable
var myName :String
myName = "test"
myName = "testing"

let myNameTry :String
myNameTry = "test"
myNameTry = "testing"

/* Note
Point 1 - you cannot assign another value to 'myNameTry' if its a constant ('LET' is used) ,refer line 62 - 64
Point 2 - you can assign another value to 'myName' if its a variable ('VAR' is used) ,refer line 58 - 60
 */

let myUppercase = myName.uppercased()
print (myName)
print (myUppercase)




