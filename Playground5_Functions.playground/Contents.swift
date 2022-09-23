import UIKit

func myFunc()
{
    print("First function")
}
myFunc()

//get input and return the result

func sumFunc(x:Int,y:Int) -> Int
{
    print ("Enter x value",x)
    print ("Enter y value",y)
    let z=x+y
    //print (z)
   return z
}
sumFunc(x: 20, y:15) //otherwise let funcVariable = sumFunc(x: 20, y:15) and print the funcVariable
