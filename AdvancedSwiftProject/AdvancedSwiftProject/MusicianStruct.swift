//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Thamaraiselvi Parasur Gajapathy on 11/5/22.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument :String
    
    
    mutating func toCheckStruct()  //use mutating keyword to avoid the error
    {
        self.age += 1
    }
}
