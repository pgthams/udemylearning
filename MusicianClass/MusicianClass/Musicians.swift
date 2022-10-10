//
//  Musicians.swift
//  MusicianClass
//
//  Created by Thamaraiselvi Parasur Gajapathy on 10/7/22.
//

import Foundation

enum MusicianType{
    case Guitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
    
}

class Musician{
    
    //declare
    var name : String
    var age = 0
    var instrument : String
    var type : MusicianType
    
    //Initializer (Constructor) - has to initialize the var
    //init()
    init(nameInit:String,ageInit:Int,instrumentInit:String,typeInit:MusicianType)
    {
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
        print ("Testing")
    }
    
    func sing(){
        print("Lalalalala")
    }
}
