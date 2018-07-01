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
    var number = ""
    
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
        number = savedDefault.getNumber()
        nameOutputField.text = "\(name)"
        numberOutputField.text = "\(number)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickSos(sender: UIButton) {
        Messenger().sendMessage(phoneNumber: number, type: "standard", userName: name)
    }
    
    @IBAction func clickPolice(_ sender: UIButton) {
        Messenger().sendMessage(phoneNumber: number, type: "urgent", userName: name)
    }
    
    @IBAction func clickFakeCall(_ sender: UIButton) {
        let ringer = Ringer()
        var setTime = Double(timeInputField.text!)!
        timeInputField.text = ""
        ringer.play(ringtonePlayer: ringtonePlayer, time: setTime)
    }

    
    @IBAction func clickSubmit(_ sender: Any) -> Void {
        name = nameInputField.text!
        number = numberInputField.text!
        numberInputField.text = ""
        nameInputField.text = ""
        
        numberOutputField.text = "\(number)"
        nameOutputField.text = "\(name)"
        
        savedDefault.setName(name: name)
        savedDefault.setNumber(number: number)
        Messenger().sendMessage(phoneNumber: number, type: "inform", userName: name)
    }
    
    
}

