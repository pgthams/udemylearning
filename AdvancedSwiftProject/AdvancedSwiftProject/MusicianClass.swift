//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by Thamaraiselvi Parasur Gajapathy on 11/5/22.
//

import Foundation

class MusicianClass {
    var name : String
    var age : Int
    var instrument :String
    
    init(nameInput: String, ageInput: Int, instrumentInput: String) {
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    func toCheckClass()
    {
        self.age += 1
    }
}


