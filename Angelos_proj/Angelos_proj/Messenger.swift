//
//  File.swift
//  Angelos_proj
//
//  Created by Dione Twinkle Estabillo on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class Messenger {
    let accountSID = "AC8206e0751f9153124ba52132eeb775f8";
    let auth = "aa5b353dbfeb13c707f1bc7d7e65bcdd";
    let messages = ["PLZ SEND HELP NOW", "Call the Police"];
    
    func sendMessage(phoneNumber:String, alamo:Alamo = Alamo(), type:String) -> Void {
        let body = (type == "standard" ? messages[0] : messages[1])
        messageHelper(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func sendEmergencyContactMessage(phoneNumber:String, userName:String, alamo:Alamo = Alamo()) -> Void {
        let body = "You have been listed as the emergency contact for \(userName)"
        messageHelper(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func messageHelper(phoneNumber:String, body:String, alamo:Alamo) {
        let url = "https://api.twilio.com/2010-04-01/Accounts/\(accountSID)/Messages"
        let parameters = ["From": "+441423740326", "To": phoneNumber, "Body": body]
        alamo.request(url: url, parameters: parameters, accountSID: accountSID, auth: auth)
    }
}
