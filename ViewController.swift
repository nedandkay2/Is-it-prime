//
//  ViewController.swift
//  Is it Prime2
//
//  Created by Paul James Hearn on 2018-02-16.
//  Copyright © 2018 Paul James Hearn. All rights reserved...
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var primeYesNo: UILabel!
    @IBOutlet weak var inputNum: UITextField!
    
    
    @IBAction func checkNum(_ sender: Any) {
        
        if let userEnteredString = inputNum.text {  // check if user enters some text.. before proceeding
        
        let userEnteredInteger = Int(inputNum.text!) // convert the the number the user entered to in the textfield to an integer
            
            if let number = userEnteredInteger {
                // check if conversion to integer has worked
                
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                        var i = 2
                        while i < number {
                            if number % i == 0 {
                                isPrime = false
                            }
                            i += 1
                
            }
                if isPrime {
                    primeYesNo.text = "\(number) is prime"
                } else {
                    primeYesNo.text = "\(number) is not prime"
                }
                
            }
            else {
                primeYesNo.text = "Please enter a positive whole number"
            }
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

