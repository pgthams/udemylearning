//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Thamaraiselvi Parasur Gajapathy on 10/8/22.
//

import Foundation

class SuperMusician : Musician{   //supermusician is a super class for musician class

    func sing2(){
        print("Second song")
    }
    
    override func sing() {  //also can override the sing func which is within musician class
        
        super.sing()
        print("overriding the sing func")
    }
}
