//
//  ViewController.swift
//  TimerProject
//
//  Created by Thamaraiselvi Parasur Gajapathy on 9/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        /*counter = 10
        
        for time in 1...10{
            counter = counter - 1
            timeLabel.text = "Time: \(counter)"
            Thread.sleep(forTimeInterval: 100)
        }*/
        counter = 10
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time is Over"
        }
    }

    @IBAction func buttonClick(_ sender: Any) {
        print ("button clicked")
    }
}

