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
    var name = ""
    var number1 = ""
    var number2 = ""
    var number3 = ""
    var customMessage = ""
    var savedDefault = SaveUserDefaults()
    var frequencyDefault = UserFrequency()
    var userFrequency = 0
    
    @IBOutlet weak var timeInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningOutputField.isHidden = true
        userFrequency = frequencyDefault.getUserFrequency()
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

    
    func showWarning() {
        if frequencyDefault.triggerConcern() == true {
            warningOutputField.isHidden = false
        } else {
            warningOutputField.isHidden = true
        }
    }
    
   
    @IBOutlet weak var warningOutputField: UILabel!
    
    
    

    
}



