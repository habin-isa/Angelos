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
    var name = ""
    var number1 = ""
    var number2 = ""
    var number3 = ""
    
    @IBOutlet weak var numberInputField1: UITextField!
    @IBOutlet weak var numberInputField2: UITextField!
    @IBOutlet weak var numberInputField3: UITextField!
    
        @IBOutlet weak var nameInputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        name = savedDefault.getName()
        number1 = savedDefault.getNumber1()
        number2 = savedDefault.getNumber2()
        number3 = savedDefault.getNumber3()
        nameOutputField.text = "\(name)"
        numberOutputField1.text = "\(number1)"
        numberOutputField2.text = "\(number2)"
        numberOutputField3.text = "\(number3)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickSos(sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendMessage(phoneNumber: number1)
        Messenger().sendMessage(phoneNumber: number2)
        Messenger().sendMessage(phoneNumber: number3)
    }
    
    @IBAction func clickPolice(_ sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendPoliceMessage(phoneNumber: number1)
        Messenger().sendPoliceMessage(phoneNumber: number2)
        Messenger().sendPoliceMessage(phoneNumber: number3)
    }
    
    @IBAction func clickSubmit(_ sender: Any) -> Void {
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
        savedDefault.setNumber1(number: number1)
        savedDefault.setNumber2(number: number2)
        savedDefault.setNumber3(number: number3)
        Messenger().sendEmergencyContactMessage(phoneNumber: number1, userName: name)
        Messenger().sendEmergencyContactMessage(phoneNumber: number2, userName: name)
        Messenger().sendEmergencyContactMessage(phoneNumber: number3, userName: name)
    }
   
    @IBOutlet weak var numberOutputField1: UILabel!
    @IBOutlet weak var numberOutputField2: UILabel!
    @IBOutlet weak var numberOutputField3: UILabel!
    @IBOutlet weak var nameOutputField: UILabel!
    
}

