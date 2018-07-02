//
//  ViewController.swift
//  Angelos_proj
//
//  Created by Habin Kim on 26/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var ringtonePlayer: AVAudioPlayer?
    
    var savedDefault = SaveUserDefaults()
    var name = ""
    var number1 = ""
    var number2 = ""
    var number3 = ""
    
    @IBOutlet weak var numberInputField1: UITextField!
    @IBOutlet weak var numberInputField2: UITextField!
    @IBOutlet weak var numberInputField3: UITextField!
    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var numberInputField: UITextField!
    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var numberOutputField: UILabel!
    @IBOutlet weak var nameOutputField: UILabel!
    @IBOutlet weak var timeInputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
         ringtonePlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "marimba.mp3", ofType:nil)!))
        } catch {}
        
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
        Messenger().sendMessage(phoneNumber: number1, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "standard", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "standard", userName: name)
    }
    
    @IBAction func clickPolice(_ sender: UIButton) {
        print(number1, number2, number3)
        Messenger().sendMessage(phoneNumber: number1, type: "urgent", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "urgent", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "urgent", userName: name)
    }
    
    @IBAction func clickFakeCall(_ sender: UIButton) {
        let ringer = Ringer()
        let setTime = Double(timeInputField.text!)!
        timeInputField.text = ""
        ringer.play(ringtonePlayer: ringtonePlayer, time: setTime)
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
        Messenger().sendMessage(phoneNumber: number1, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number2, type: "inform", userName: name)
        Messenger().sendMessage(phoneNumber: number3, type: "inform", userName: name)
    }
   
    @IBOutlet weak var numberOutputField1: UILabel!
    @IBOutlet weak var numberOutputField2: UILabel!
    @IBOutlet weak var numberOutputField3: UILabel!
    @IBOutlet weak var nameOutputField: UILabel!

    } 
}

