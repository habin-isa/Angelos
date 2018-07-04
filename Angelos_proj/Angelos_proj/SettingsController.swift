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


    
    func viewDidLoad() {
        nameOutputField.text = "\(name)"
    }
    
    
}
