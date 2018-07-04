//
//  File.swift
//  Angelos_proj
//
//  Created by Dione Twinkle Estabillo on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class Messenger {
    let accountSID = EncryptedKeys().accountSID
    let auth = EncryptedKeys().authKey
    let messages = ["PLZ SEND HELP NOW -", "Call the Police -", "You have been listed as my emergency contact -"]
    
    func sendMessage(phoneNumber:String, alamo:Alamo = Alamo(), type:String, userName:String, dateTime:DateTime = DateTime()) -> Void {
        let body = createBody(type: type, dateTime: dateTime, userName: userName)
        sendRequest(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func sendCustomMessage(phoneNumber:String, alamo:Alamo = Alamo(), userName:String, customMessage:String, dateTime:DateTime = DateTime()) -> Void {
        let body = customMessage + userName + dateTime.formatDate()
        sendRequest(phoneNumber: phoneNumber, body: body, alamo: alamo)
    }
    
    func sendRequest(phoneNumber:String, body:String, alamo:Alamo) {
        let url = "https://api.twilio.com/2010-04-01/Accounts/\(accountSID)/Messages"
        let parameters = ["From": "+441423740326", "To": phoneNumber, "Body": body]
        alamo.request(url: url, parameters: parameters, accountSID: accountSID, auth: auth)
    }
    
    func createBody(type:String, dateTime:DateTime, userName:String) -> String {
        var body = (type == "urgent" ? messages[1] : messages[0])
        if type == "inform" { body = messages[2] }
        body += userName
        body += dateTime.formatDate()
        body += Location().returnLink()
        return body
    }
    
    
}
