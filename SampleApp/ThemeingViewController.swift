//
//  ThemeingViewController.swift
//  SampleApp
//
//  Created by Dante R Hunt on 11/14/16.
//  Copyright © 2016 Dante R Hunt. All rights reserved.
//

import UIKit

class ThemeingViewController: UIViewController {
    
    @IBOutlet var switichStatus:UISwitch!
    @IBOutlet var stepIncrementer:UIStepper!
    @IBOutlet var buttonAlert:UIButton!
    @IBOutlet var buttonAction:UIButton!
    @IBOutlet var buttonModal:UIButton!
    @IBOutlet var labelTheme:UILabel!
    @IBOutlet var labelSteps:UILabel!
    let alert = UIAlertController(title: "Warning", message: "I'm an Alert.", preferredStyle: UIAlertControllerStyle.alert)

    @IBAction func switichOnOff(_ sender: AnyObject) {
        if (switichStatus.isOn){
            self.view.backgroundColor = Style.backgroundColorDark
            stepIncrementer.tintColor = Style.stepperColorDark
            switichStatus.onTintColor = Style.switcherONColorDark
            buttonAlert.setTitleColor(Style.textBtnColorDark, for: UIControlState.normal)
            buttonAction.setTitleColor(Style.textBtnColorDark, for: UIControlState.normal)
            buttonModal.setTitleColor(Style.modalBtnColorDark, for: UIControlState.normal)
            labelSteps.textColor = Style.secondLabelTitleColorTextDark
            labelSteps.backgroundColor = Style.secondLabelBackgroundColorDark
            labelTheme.textColor = Style.labelTitleColorTextDark
            labelTheme.backgroundColor = Style.labelBackgroundColorDark
        }
        else{
            self.view.backgroundColor = Style.backgroundColor
            stepIncrementer.tintColor = Style.stepperColor
            buttonAlert.setTitleColor(Style.textBtnColor, for: UIControlState.normal)
            buttonAction.setTitleColor(Style.textBtnColor, for: UIControlState.normal)
            buttonModal.setTitleColor(Style.modalBtnColor, for: UIControlState.normal)
            labelSteps.textColor = Style.secondLabelTitleColorText
            labelSteps.backgroundColor = Style.secondLabelBackgroundColor
            labelTheme.textColor = Style.labelTitleColorText
            labelTheme.backgroundColor = Style.labelBackgroundColor

        }
        
    }
    @IBAction func actionSheetClicked(_ sender: UIButton) {
        let optionMenu: UIAlertController = UIAlertController(title: "Please select", message: "Option to select", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Items Deleted")
        })
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Items Saved")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
        
        self.present(optionMenu, animated: true, completion: nil)
    }
    @IBAction func alertClicked(_ sender: UIButton) {
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func modelClicked(_ sender: UIButton) {
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        let stepCounter: String = "Steps : " + Int(sender.value).description
        labelSteps.text = stepCounter

    }
    
    
}
