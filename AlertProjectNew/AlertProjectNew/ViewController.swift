//
//  ViewController.swift
//  AlertProjectNew
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupButton(_ sender: Any) {
        //Username Empty - Initial
        /*let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
         //let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         {
         (UIAlertAction) in
         print("button clicked for username")//button clicked
         }
         alert.addAction(okButton)
         self.present(alert, animated: true,completion: nil)*/
        
        // 2nd try - Use if loop for all scenario
/*        if usernameText.text == "" {
            let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }else if passwordText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Password not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }else if passwordText.text != password2Text.text {
            let alert = UIAlertController(title: "Error", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }else {
            let alert = UIAlertController(title: "Success", message: "You are all set to get in", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }   */
        
        //3rd try - More simplified by creating a function and calling it
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")
        }else if passwordText.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        }else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error" , messageInput: "Passwords do not match")
        }else {
            makeAlert(titleInput: "Success" , messageInput: "You are all set to get in")
        }
        
        func makeAlert(titleInput: String , messageInput: String){
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true,completion: nil)
        }
        
    }
}

