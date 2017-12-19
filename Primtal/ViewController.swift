//
//  ViewController.swift
//  Primtal
//
//  Created by Thomas Kirk on 15/12/2017.
//  Copyright © 2017 OneKirk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        var isPrime = true
        
        if let userInput = Int(inputField.text!) {
            
            if userInput > 0 {
                
                var i = 2
                
                while i < userInput && isPrime == true {
                    
                    if userInput % i == 0 {
                        isPrime = false
                    }
                
                    i += 1
                }
                
                if userInput == 1 {
                    
                    resultLabel.text = String(userInput) + NSLocalizedString("Not prime", comment: "Message")
                } else if isPrime {
                    
                    resultLabel.text = String(userInput) + NSLocalizedString("Is prime", comment: "Message")
                } else {
                    
                    resultLabel.text = String(userInput) + NSLocalizedString("Not prime", comment: "Message")
                }
            } else {
                
                resultLabel.text = NSLocalizedString("Invalid input", comment: "Message")
            }
        } else {
            
            resultLabel.text = NSLocalizedString("Invalid input", comment: "Message")
            
        }
        
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

