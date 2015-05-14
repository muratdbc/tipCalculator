//
//  ViewController.swift
//  tipCalculatorVimeo
//
//  Created by mgocmen on 5/13/15.
//  Copyright (c) 2015 mgocmen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text="$0.00"
        totalLabel.text="$0.00"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipControl=[0.10,0.15,0.20]
        var tipAmount=tipControl[tipPercentage.selectedSegmentIndex]
        
        var billAmountString=billField.text
        var billAmount=(billAmountString as NSString).doubleValue
        var tip=billAmount * tipAmount
        var total=billAmount + tip
        
        tipLabel.text=String(format: "$%.2f", tip)
        totalLabel.text=String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        println(tipPercentage.selectedSegmentIndex)
        view.endEditing(true)
    }
}

