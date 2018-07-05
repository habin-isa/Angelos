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
    var frequencyDefault = UserFrequency()
    var userFrequency = 0
    var name = SaveUserDefaults().getName()
    var number1 = SaveUserDefaults().getNumber1()
    var number2 = SaveUserDefaults().getNumber2()
    var number3 = SaveUserDefaults().getNumber3()
    var customMessage = SaveUserDefaults().getCustomMessage()
    
    @IBOutlet weak var timeInputField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningOutputField.isHidden = true
        userFrequency = frequencyDefault.getUserFrequency()
    }
    
    @IBAction func clickSos(sender: UIButton) {
    Messenger().sendMessage(phoneNumber: number1, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "standard", userName: name)
        frequencyDefault.click()
        showWarning()
    }
    
    @IBAction func clickPolice(_ sender: UIButton) {
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
    
    func showWarning() {
        if frequencyDefault.triggerConcern() == true {
            warningOutputField.isHidden = false
        } else {
            warningOutputField.isHidden = true
        }
    }
    
    @IBOutlet weak var warningOutputField: UILabel!
    
//    @IBAction func readFile1(_ sender: Any) {
//        self.textView.text = load(file: "directory")
//    }
    
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
    
//    @IBAction func DisplayText(_ sender: Any) {
//        self.textView.text = load(file: "directory")
//    }
}



