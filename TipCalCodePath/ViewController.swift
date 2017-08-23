//
//  ViewController.swift
//  TipCalCodePath
//
//  Created by Salehin,Mohammad on 8/19/17.
//  Copyright © 2017 Salehin,Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipSegment: UISegmentedControl!
    @IBOutlet weak var partyNo: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    
    @IBOutlet weak var splitedAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    var totalBill = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        
        
        let indexValue = defaults.integer(forKey: "default_tip_percentage_index")// would be better to check if exists
        
        tipSegment.setValue(indexValue, forKey: "selectedSegmentIndex")
        
        calculateTip(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.'
    }


    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18,0.2,0.25]
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * tipPercentages[tipSegment.selectedSegmentIndex]
        totalBill = bill+tip;
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", totalBill)
        
        calculateSplit(view)
        
    }
    
    
    @IBAction func calculateSplit(_ sender: Any) {
        let splitSliderValue = Int(splitSlider.value)
        partyNo.text = String(splitSliderValue)
        
        print(totalBill)
        print(splitSliderValue)
        splitedAmount.text = String(format: "$%.2f", totalBill/Double(splitSliderValue))
        
        
    }

    @IBAction func OnTap(_ sender: Any) {
        print("tapped");
        view.endEditing(true)
    }
}

