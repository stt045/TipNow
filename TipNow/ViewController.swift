//
//  ViewController.swift
//  TipNow
//
//  Created by Steven Tran on 1/29/19.
//  Copyright © 2019 Steven Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "TipNow"
        
        // Automatically be in the bill amount text field when opening the application
        billField.becomeFirstResponder()
        
        // attemping to make UIBarButton show up
        
    }

    @IBAction func onTap(_ sender: Any) {
        // Code that will run when the user taps
        
        // Dismissing the keyboard on Tap
        view.endEditing(true)
    }
    
    // Automatically update tip and total after user
    // inputs a number into the bill amount
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0 // type casting string to double and if text is not valid, default value will be 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        // Calculate the tip and total
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip) // prints the value of variable kind of like typecasting to string
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

