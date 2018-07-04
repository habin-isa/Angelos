//
//  ViewController.swift
//  Angelos_proj
//
//  Created by Habin Kim on 26/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit
import AVFoundation
import CoreLocation

class ViewController: UIViewController{
        
    var ringtonePlayer = AudioPlayer()
    
    var savedDefault = SaveUserDefaults()
    var frequencyDefault = UserFrequency()
    var name = ""
    var number1 = ""
    var number2 = ""
    var number3 = ""
    var customMessage = ""
    var userFrequency = 0

    
    //buttons
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    @IBOutlet weak var policeButton: UIButton!
    @IBOutlet weak var directoryButton: UIButton!
    @IBOutlet weak var sosButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var saveCustomMsgButton: UIButton!
    
    //input fields
    @IBOutlet weak var numberInputField1: UITextField!
    @IBOutlet weak var numberInputField2: UITextField!
    @IBOutlet weak var numberInputField3: UITextField!
    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var timeInputField: UITextField!
    @IBOutlet weak var customMsgInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsPage()
        warningOutputField.isHidden = true
        name = savedDefault.getName()
        number1 = savedDefault.getNumber1()
        number2 = savedDefault.getNumber2()
        number3 = savedDefault.getNumber3()
        customMessage = savedDefault.getCustomMessage()
        userFrequency = frequencyDefault.getUserFrequency()
        nameOutputField.text = "\(name)"
        numberOutputField1.text = "\(number1)"
        numberOutputField2.text = "\(number2)"
        numberOutputField3.text = "\(number3)"
        customMsgOutputField.text = "\(customMessage)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickSos(sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendMessage(phoneNumber: number1, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "standard", userName: name)
        frequencyDefault.click()
        showWarning()
        
    }
    
    @IBAction func clickPolice(_ sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendMessage(phoneNumber: number1, type: "urgent", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "urgent", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "urgent", userName: name)
        frequencyDefault.click()
        showWarning()
    }
    
    @IBAction func clickCustom(_ sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendCustomMessage(phoneNumber: number1, userName: name, customMessage: customMessage)
        Messenger().sendCustomMessage(phoneNumber: number2, userName: name, customMessage: customMessage)
        Messenger().sendCustomMessage(phoneNumber: number3, userName: name, customMessage: customMessage)
        frequencyDefault.click()
        showWarning()
    }
    
    
    @IBAction func clickFakeCall(_ sender: UIButton) {
        let ringer = Ringer()
        let setTime = Double(timeInputField.text!)!
        timeInputField.text = ""
        ringer.play(ringtonePlayer: ringtonePlayer, time: setTime)
        frequencyDefault.click()
        showWarning()
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
        savedDefault.setNumber(number: number1)
        savedDefault.setNumber(number: number2)
        savedDefault.setNumber(number: number3)
        Messenger().sendMessage(phoneNumber: number1, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "inform", userName: name)
        homePage()
    }
    
    @IBAction func clickSave(_ sender: UIButton) {
        customMessage = customMsgInputField.text!
        customMsgInputField.text = ""
        customMsgOutputField.text = "\(customMessage)"
        savedDefault.setCustomMessage(customMessage: customMessage)
    }
    
    func showWarning() {
        if frequencyDefault.triggerConcern() == true {
            warningOutputField.isHidden = false
        } else {
            warningOutputField.isHidden = true
        }
    }
    
   
    @IBOutlet weak var callTimeLabel: UILabel!
    @IBOutlet weak var numberOutputField1: UILabel!
    @IBOutlet weak var numberOutputField2: UILabel!
    @IBOutlet weak var numberOutputField3: UILabel!
    @IBOutlet weak var nameOutputField: UILabel!
    @IBOutlet weak var customMsgOutputField: UILabel!
    @IBOutlet weak var warningOutputField: UILabel!
    @IBOutlet weak var customMsgLabel: UILabel!
    @IBOutlet weak var contactNumberLabel1: UILabel!
    @IBOutlet weak var contactNumberLabel2: UILabel!
    @IBOutlet weak var contactNumberLabel3: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func readFile1(_ sender: Any) {
        
        self.textView.text = load(file: "directory")
    }
    
    func load(file name:String) -> String {
        
        if let path = Bundle.main.path(forResource: name, ofType: "txt") {
            
            if let contents = try? String(contentsOfFile: path) {
                
                return contents
                
            } else {
                
                print("Error! - This file doesn't contain any text.")
            }
            
        } else {
            
            print("Error! - This file doesn't exist.")
        }
        
        return ""
    }
    
    @IBAction func DisplayText(_ sender: Any) {
        self.textView.text = load(file: "directory")
        directoriesPage()
    }
    
    @IBAction func goHome(_ sender: Any) {
        Page2()
    }
    
    func settingsPage() {
        //buttons
        sosButton.isHidden = true
        policeButton.isHidden = true
        customButton.isHidden = true
        directoryButton.isHidden = true
        callButton.isHidden = true
        homeButton.isHidden = true
        
        //text
        textView.isHidden = true
        
        //output fields
        numberOutputField1.isHidden = true
        numberOutputField2.isHidden = true
        numberOutputField3.isHidden = true
        customMsgOutputField.isHidden = true
        nameOutputField.isHidden = true
        
//        //labels
//        callTimeLabel.isHidden = false
//        timeInputField.isHidden = false
    }
    
    func homePage() {
        //buttons
        sosButton.isHidden = false
        policeButton.isHidden = false
        customButton.isHidden = false
        directoryButton.isHidden = false
        callButton.isHidden = false
        submitButton.isHidden = true
        saveCustomMsgButton.isHidden = true
        homeButton.isHidden = true
        
        //input fields
        timeInputField.isHidden = true
        numberInputField1.isHidden = true
        numberInputField2.isHidden = true
        numberInputField3.isHidden = true
        nameInputField.isHidden = true
        customMsgInputField.isHidden = true
        
        //output fields
        customMsgOutputField.isHidden = true
        numberOutputField1.isHidden = true
        numberOutputField2.isHidden = true
        numberOutputField3.isHidden = true
        
        //labels
        customMsgLabel.isHidden = true
        contactNumberLabel1.isHidden = true
        contactNumberLabel2.isHidden = true
        contactNumberLabel3.isHidden = true
        nameLabel.isHidden = true
        callTimeLabel.isHidden = true
        
        //text
        textView.isHidden = true
    }
    
    func directoriesPage() {
        //buttons
        sosButton.isHidden = true
        policeButton.isHidden = true
        customButton.isHidden = true
        directoryButton.isHidden = true
        callButton.isHidden = true
        submitButton.isHidden = true
        saveCustomMsgButton.isHidden = true
        homeButton.isHidden = false
        
        //input fields
        timeInputField.isHidden = true
        numberInputField1.isHidden = true
        numberInputField2.isHidden = true
        numberInputField3.isHidden = true
        nameInputField.isHidden = true
        customMsgInputField.isHidden = true
        
        //output fields
        customMsgOutputField.isHidden = true
        numberOutputField1.isHidden = true
        numberOutputField2.isHidden = true
        numberOutputField3.isHidden = true
        
        //labels
        customMsgLabel.isHidden = true
        contactNumberLabel1.isHidden = true
        contactNumberLabel2.isHidden = true
        contactNumberLabel3.isHidden = true
        nameLabel.isHidden = true
        callTimeLabel.isHidden = true
        
        //text
        textView.isHidden = false
    }
    
    
}



