//
//  ViewController.swift
//  SegueApp
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstViewController: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    var userName = " "
    
    //*************************************************************************
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //******** Lifecycle
        print("viewDidLoad function called")
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text =  "" //empty string
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    //*************************************************************************
    @IBAction func enterButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    //prepare for seque to connect the first VC to second VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //as - Casting our 2nd VC as a variable
            let destinationVC = segue.destination as! Second_ViewController
            destinationVC.myName = userName
        }
    }
}

