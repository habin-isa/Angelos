//
//  ViewController.swift
//  Angelos_proj
//
//  Created by Habin Kim on 26/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        var savedDefault = SaveUserDefaults()
    
        @IBOutlet weak var numberInputField: UITextField!
        @IBOutlet weak var nameInputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameOutputField.text = "\(savedDefault.getName())"
        numberOutputField.text = "\(savedDefault.getNumber())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickSos(sender: UIButton) {
        Messenger().sendMessage(phoneNumber: "+447891721675")
    }
    

    @IBAction func clickSubmit(_ sender: Any) -> Void {
        let name = nameInputField.text!
        let number = numberInputField.text!
        
        savedDefault.setName(name: name)
        savedDefault.setNumber(number: number)
    }
    @IBOutlet weak var numberOutputField: UILabel!
    @IBOutlet weak var nameOutputField: UILabel!
    
}

