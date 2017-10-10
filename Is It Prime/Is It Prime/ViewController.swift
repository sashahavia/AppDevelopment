//
//  ViewController.swift
//  Is It Prime
//
//  Created by z on 10/8/17.
//  Copyright © 2017 Sasha Havia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueEntered: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func checkValue(_ sender: Any) {
        if let userValue = valueEntered.text {
            let enteredValue = Int(userValue)
            if let num = enteredValue {
                var isPrime = true
                if num == 1 {
                    isPrime = false
                }
                
                var i = 2
                while i < num {
                    if num % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                
                if isPrime {
                    result.text = "\(num) is prime!"
                } else {
                    result.text = "\(num) is not prime!"
                }
            } else {
                result.text = "Please enter positive whole number"
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

