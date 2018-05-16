//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Robert Gomez on 4/14/18.
//  Copyright © 2018 Robert Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets
    @IBOutlet weak var tipSelector: UISegmentedControl!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesEnded(touches, with: event)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        if let billAmount = Double(billAmountTextField.text!) {
            var tipPercentage = 0.0
            
            switch tipSelector.selectedSegmentIndex {
            case 0:
                tipPercentage = 0.10
            case 1:
                tipPercentage = 0.15
            case 2:
                tipPercentage = 0.20
            case 3:
                tipPercentage = 0.25
            default:
                break
            }
            
            let roundedBillAmount = round(100 * billAmount) / 100
            let tipAmount = roundedBillAmount * tipPercentage
            let roundedTipAmount = round(100 * tipAmount) / 100
            let totalAmount = roundedBillAmount + roundedTipAmount
            
            if (!billAmountTextField.isEditing) {
                billAmountTextField.text = String(format: "%.2f", roundedBillAmount)
            }
            tipAmountLabel.text = String(format: "%.2f", roundedTipAmount)
            billTotalLabel.text = String(format: "%.2f", totalAmount)
        } else {
            billAmountTextField.text = ""
            tipAmountLabel.text = ""
            billTotalLabel.text = ""
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

