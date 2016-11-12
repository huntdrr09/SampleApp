//
//  ViewController.swift
//  SampleApp
//
//  Created by Dante R Hunt on 11/7/16.
//  Copyright © 2016 Dante R Hunt. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    //allows access to UIElements
    @IBOutlet var lowerBoundField:UITextField! 
    @IBOutlet var upperBoundField:UITextField!
    @IBOutlet var randLabelField:UILabel!
    //creates alert
    let alert = UIAlertController(title: "Warning", message: "Enter a value for both fields.", preferredStyle: UIAlertControllerStyle.alert)
    //tapping background makes keyboard go away
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    //pressing generate checks if values are present in fields and sends an alert to the user if empty
    @IBAction func randDisplay(sender: UIButton){
        if (lowerBoundField.text!.isEmpty || upperBoundField.text!.isEmpty){
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else {
            let lBF: UInt32 = UInt32(lowerBoundField.text!)!
            let uBF: UInt32 = UInt32(upperBoundField.text!)!
            var randField: String = "Result: "
            
            randField += generateRand(with: lBF, and: uBF)
            randLabelField.text = randField
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func generateRand(with lower: UInt32, and upper: UInt32) -> String{
    
        
        return String(arc4random_uniform(upper) + lower);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

