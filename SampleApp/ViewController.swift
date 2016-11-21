//
//  ViewController.swift
//  SampleApp
//
//  Created by Dante R Hunt on 11/7/16.
//  Copyright © 2016 Dante R Hunt. All rights reserved.
//

import UIKit
import Foundation
import GameplayKit


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
            let lBF: Int = Int(lowerBoundField.text!)!
            let uBF: Int = Int(upperBoundField.text!)!
            var randField: String = "Result: "
            
            randField += generateRand(with: lBF, and: uBF)
            randLabelField.text = randField
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func generateRand(with lower: Int, and upper: Int) -> String{
    
        let randomNum = GKRandomDistribution(lowestValue : lower, highestValue: upper)
        return randomNum.nextInt().description;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

