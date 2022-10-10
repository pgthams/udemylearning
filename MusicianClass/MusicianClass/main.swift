//
//  main.swift
//  MusicianClass
//
//  Created by Thamaraiselvi Parasur Gajapathy on 10/7/22.
//

import Foundation

/*let james = Musician()  //create object - so james is the object/instance for the class Musicdetail
//property
james.age = 50
james.name = "James habbs"
james.instrument = "Violin"*/

let james = Musician(nameInit: "James Habbs", ageInit: 60, instrumentInit: "Violin",typeInit: .Bassist)
/*print(james.age)
print(james.type)
james.sing()*/

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 70, instrumentInit: "Guitar", typeInit: .Vocalist)
kirk.sing()
kirk.sing2()

//the object james belongs to class musician so he does whatever in musician class
//the object kirk belongs to class supermusician so he does whatever in supermusician and musician class
//supermusician is inherited from musician class
