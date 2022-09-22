//
//  ViewController.swift
//  UdemyLearning
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var flowerLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton(_ sender: Any) {
        imageView.image = UIImage(named: "img4")
        
    }
    
}

