//
//  ModalViewController.swift
//  SampleApp
//
//  Created by Dante R Hunt on 11/15/16.
//  Copyright © 2016 Dante R Hunt. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet weak var returnBtn: UIButton!
    
    @IBAction func returnBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }
}
