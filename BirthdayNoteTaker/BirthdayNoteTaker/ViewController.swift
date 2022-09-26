//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //to store the data in display view
        let storedName = UserDefaults.standard.object(forKey: "name1")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday1")// to get the data in the display view add this line
        
        //Casting - as? vs as!   so the app dont crash even if junk data is put in
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }
    
    //SAVE button
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!, forKey: "name1")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday1")
        UserDefaults.standard.synchronize() // old method but for reference
        
        nameLabel.text = "Name: \(nameText.text!)"
        birthdayLabel.text = "Birthday: \(birthdayText.text!)"
    }
    
    
    //DELETE button
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name1")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday1")
        
        //" " vs nil
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name1")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday1")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    
}

