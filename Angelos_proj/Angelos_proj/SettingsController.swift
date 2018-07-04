//
//  SettingsController.swift
//  Angelos_proj
//
//  Created by Habin Kim on 04/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import UIKit

class SettingsController: UIViewController {
  
    @IBOutlet weak var nameOutputField: UILabel!
    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var numberInputField1: UITextField!
    @IBOutlet weak var numberInputField2: UITextField!
    @IBOutlet weak var numberInputField3: UITextField!
    @IBOutlet weak var numberOutputField1: UILabel!
    @IBOutlet weak var numberOutputField2: UILabel!
    @IBOutlet weak var numberOutputField3: UILabel!

    
    func viewDidLoad() {
        nameOutputField.text = "\(name)"
    }
    
    
}
