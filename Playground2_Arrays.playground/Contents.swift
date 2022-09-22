import UIKit

//ARRAY ************
var favMovies = ["movie1","movie2","movie3","movie4",5,true] as [Any]

//as -> casting , Any ->any object in the array => array can have string ,Int,boolean or data type

//index
favMovies[2]

var myStringArray = ["test1","test2","Test3","test4"]
myStringArray[1].uppercased()
myStringArray[1]
myStringArray.count
myStringArray[myStringArray.count - 1]

myStringArray.last

var myStringArraysort = ["test21","test12","Test03","test44"]
myStringArraysort.sort()

//Integer array

var myNumberArray = [1,2,3,4,5]
myNumberArray[3]

//SET ************

var mySet : Set = [1,2,3,4,5,1,2]

/*Difference
 - SET cannot have same value within the set
 - unordered collection is SET and they dont have index
 - SET avoids duplicates and give unique values
*/

//convert ARRAY to SET
var myArray = [1,2,3,1,2,6,2,1,5]
var myArraySet = Set(myArray)
print(myArray)
print(myArraySet) //removed duplicates and printed only unique values

//Taking union for different set
var mySet1 :Set = [1,2,3]
var mySet2 :Set = [3,4,5]

var mySet3 = mySet2.union(mySet1)

// Dictionary - KEY-VALUE pairing

var myFavDirectors = ["Dir1":"movie1","Dir2":"movie2","Dir3":"movie3"]
myFavDirectors["Dir2"]
//Can change values

myFavDirectors["Dir1"] = "movie11"
myFavDirectors["Dir1"]

// To add new values
myFavDirectors["Dir5"] = "movie5"
print(myFavDirectors)
