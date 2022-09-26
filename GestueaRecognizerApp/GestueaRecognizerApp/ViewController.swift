//
//  ViewController.swift
//  GestueaRecognizerApp
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flowerView: UIImageView!
    
    @IBOutlet weak var flowerLabel: UILabel!
    var changeFlower = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flowerView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        flowerView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic(){
       //Initial understanding - click the image1 to see the image 2 and cannot do any more change
    /*  flowerView.image = UIImage(named: "img2")
        flowerLabel.text = "Two flower"
        print ("tapped")*/
        
        // click the image1 to see the image 2 and do vice versa to see the image again & again
        
        //var changeFlower = true //having this variable with function line #41 will not execute  so this line to #15
        
        if changeFlower == true{
            flowerView.image = UIImage(named: "img2")
            flowerLabel.text = "Two flower"
            changeFlower = false
        } else {
            flowerView.image = UIImage(named: "img6")
            flowerLabel.text = "One flower"
            changeFlower = true
        }
    }
}

