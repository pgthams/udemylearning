//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Thamaraiselvi Parasur Gajapathy on 10/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Currencyconvert: UILabel!
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var jpyLbael: UILabel!
    @IBOutlet weak var inrLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getRatesClick(_ sender: Any) {
        
        // 1) Request & Session
        // 2) Response & Data
        // 3) Parsing & JSON Serialization  (Data processing)
        
        let url = URL(string:"https://api.fastforex.io/fetch-all?api_key=9c32f72a24-2bbac8bed9-rjsxf5")
        //let url = URL(string:"https://data.fixer.io/api/latest?access_key=Iq1rlTKNh4ciG1HXPugdb5ox9ZCEWiU4")
        let session = URLSession.shared
        
        //Closure
        //let task = session.dataTask(with: url!, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        
        let task = session.dataTask(with: url!) { (data,reponse,error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true,completion:nil)
            }
            else
            {
                //2.
                if data != nil {
                    
                    do{
                        
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                        
                       //ASYNC  ( Do 2 things at the same time)
                        // SYNC (Wait for everyprocess to complete to start the other one)
                        
                        DispatchQueue.main.async {
                            //print(jsonResponse["rates"])
                            if let rates = jsonResponse["rates"] as? [String : Any]
                            {
                                //print(rates)
                                if let cad = rates["CAD"] as? Double
                                {
                                    self.cadLabel.text = "CAD: \(cad)"
                                }
                                if let usd = rates["USD"] as? Double
                                {
                                    self.usdLabel.text = "USD: \(usd)"
                                }
                                if let jpy = rates["JPY"] as? Double
                                {
                                    self.jpyLbael.text = "JPY: \(jpy)"
                                }
                                if let inr = rates["INR"] as? Double
                                {
                                    self.inrLabel.text = "INR: \(inr)"
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                    catch {
                        print("error")
                        
                    }
                    
                }
                }
            }
            task.resume()
        }
    }

