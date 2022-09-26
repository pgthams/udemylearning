//
//  Second ViewController.swift
//  SegueApp
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/24/22.
//

import UIKit

class Second_ViewController: UIViewController {

    @IBOutlet weak var secViewController: UILabel!
    @IBOutlet weak var nameSecondVC: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        nameSecondVC.text = myName
    }
    

    
    

}
