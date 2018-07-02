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
    let messages = ["PLZ SEND HELP NOW -", "Call the Police -", "You have been listed as my emergency contact -"];
    
    func sendMessage(phoneNumber:String, alamo:Alamo = Alamo(), type:String, userName:String) -> Void {
        var body:String
        body = (type == "urgent" ? messages[1] : messages[0])
        if type == "inform" { body = messages[2] }
        body += userName
        sendRequest(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func SendCustomMessage(phoneNumber:String, alamo:Alamo = Alamo(), userName:String, customMessage:String) -> Void {
        var body:String
        body = customMessage
        body += userName
        sendRequest(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func sendRequest(phoneNumber:String, body:String, alamo:Alamo) {
        let url = "https://api.twilio.com/2010-04-01/Accounts/\(accountSID)/Messages"
        let parameters = ["From": "+441423740326", "To": phoneNumber, "Body": body]
        alamo.request(url: url, parameters: parameters, accountSID: accountSID, auth: auth)
    }
}
