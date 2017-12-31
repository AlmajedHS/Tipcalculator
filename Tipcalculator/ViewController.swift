//
//  ViewController.swift
//  Tipcalculator
//
//  Created by Hussain Almajed on 12/30/17.
//  Copyright © 2017 Hussain Almajed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var oneCLabel: UILabel!
    @IBOutlet weak var twoCLabel: UILabel!
    @IBOutlet weak var threeCLabel: UILabel!
    @IBOutlet weak var fourCLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15,0.18,0.20]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        oneCLabel.text = String(format: "$%.2f",total);
         twoCLabel.text = String(format: "$%.2f",total/2);
         threeCLabel.text = String(format: "$%.2f",total/3);
         fourCLabel.text = String(format: "$%.2f",total/4);
        
        
    }
    
}

