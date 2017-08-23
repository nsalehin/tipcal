//
//  SettingsViewController.swift
//  TipCalCodePath
//
//  Created by Salehin,Mohammad on 8/22/17.
//  Copyright © 2017 Salehin,Mohammad. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        let defaults = UserDefaults.standard
        
        
        let indexValue = defaults.integer(forKey: "default_tip_percentage_index")// would be better to check if exists
        
        defaultTipSegment.setValue(indexValue, forKey: "selectedSegmentIndex")
        
     
        defaults.set(indexValue, forKey: "default_tip_percentage_index")
        
        defaults.synchronize()
    }
    
    @IBAction func setDefaultTipIndex(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(defaultTipSegment.selectedSegmentIndex, forKey: "default_tip_percentage_index")
        
        defaults.synchronize()
        
      
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
