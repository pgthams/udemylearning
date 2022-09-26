//
//  ViewController.swift
//  ProjectProgrammaticView
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        //Create a label
        //let myLabel = UILabel()
        myLabel.text = "Flower Application"
        myLabel.textAlignment = .center
        //myLabel.frame = CGRect(x: 100, y: 100, width: 165, height: 100)
        myLabel.frame = CGRect(x: width*0.5 - width * 0.8/2, y: height*0.5 - 50/2, width: width*0.8, height: 50)
        view.addSubview(myLabel)
        
        //Create a Button
        let myButton = UIButton()
        myButton.setTitle("My First Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.green, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width*0.5 - 100 , y: height*0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        //Provide Action for the button
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction(){
        //print("tap")
        myLabel.text="Veg application"
        //To access the UILabel it has to outside the func but inside the class ,so disable #22 and move it to #12 which is outside the func
        //disable #42 and #43 is written
    }


}

