//
//  SettingsViewController.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 05/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var ringtonePlayer = AudioPlayer()
    
    var savedDefault = SaveUserDefaults()
    var name = ""
    var number1 = ""
    var number2 = ""
    var number3 = ""
    var customMessage = ""
    
    @IBOutlet weak var nameInputField: UITextField!
    
    @IBOutlet weak var nameOutputField: UILabel!
    
    @IBOutlet weak var numberOutputField1: UILabel!
    
    @IBOutlet weak var numberOutputField2: UILabel!
    
    @IBOutlet weak var numberOutputField3: UILabel!
    
    @IBOutlet weak var numberInputField1: UITextField!
    
    @IBOutlet weak var numberInputField2: UITextField!
    
    @IBOutlet weak var numberInputField3: UITextField!
    
    @IBOutlet weak var customMsgInputField: UITextField!
    
    @IBOutlet weak var customMsgOutputField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name = savedDefault.getName()
        number1 = savedDefault.getNumber1()
        number2 = savedDefault.getNumber2()
        number3 = savedDefault.getNumber3()
        customMessage = savedDefault.getCustomMessage()
        nameOutputField.text = "\(name)"
        numberOutputField1.text = "\(number1)"
        numberOutputField2.text = "\(number2)"
        numberOutputField3.text = "\(number3)"
        customMsgOutputField.text = "\(customMessage)"
    }
    
    @IBAction func clickSubmit(_ sender: Any) {
        name = nameInputField.text!
        number1 = numberInputField1.text!
        number2 = numberInputField2.text!
        number3 = numberInputField3.text!
        numberInputField1.text = ""
        numberInputField2.text = ""
        numberInputField3.text = ""
        nameInputField.text = ""
        
        numberOutputField1.text = "\(number1)"
        numberOutputField2.text = "\(number2)"
        numberOutputField3.text = "\(number3)"
        nameOutputField.text = "\(name)"
        
        savedDefault.setName(name: name)
        savedDefault.setNumber(number: number1)
        savedDefault.setNumber(number: number2)
        savedDefault.setNumber(number: number3)
        Messenger().sendMessage(phoneNumber: number1, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "inform", userName: name)
    }
    
    
    @IBAction func clickSave(_ sender: Any) {
        customMessage = customMsgInputField.text!
        customMsgInputField.text = ""
        customMsgOutputField.text = "\(customMessage)"
        savedDefault.setCustomMessage(customMessage: customMessage)
    }
    
}
