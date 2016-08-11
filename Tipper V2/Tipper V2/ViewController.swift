//
//  ViewController.swift
//  Tipper V2
//
//  Created by Hachey,Alex on 8/8/16.
//  Copyright © 2016 Hachey,Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipControl2: UISegmentedControl!
    @IBOutlet weak var tipControl3: UISegmentedControl!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
   view.endEditing(true)
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
    let tipPercentages = [0.18, 0.2, 0.25]
        
    let bill = Double(billField.text!) ?? 0
    let tip = bill * (tipPercentages[tipControl.selectedSegmentIndex] + tipPercentages[tipControl2.selectedSegmentIndex] + tipPercentages[tipControl3.selectedSegmentIndex]) / 3
    let total = bill + tip
        
    
        tipAmount.text = String(format: "$%.2f", tip)
    totalAmount.text = String(format: "$%.2f", total)
    }
}
