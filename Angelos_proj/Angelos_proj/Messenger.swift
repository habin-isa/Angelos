//
//  File.swift
//  Angelos_proj
//
//  Created by Dione Twinkle Estabillo on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import Alamofire

class Messenger {
    var accountSID = "AC8206e0751f9153124ba52132eeb775f8";
    var auth = "aa5b353dbfeb13c707f1bc7d7e65bcdd";
    var url = "https://api.twilio.com/2010-04-01/Accounts/AC8206e0751f9153124ba52132eeb775f8/Messages"
    var parameters = ["From": "+441423740326", "To": "+447891721675", "Body": "Send me noodles"]
    
    func sendMessage() -> Void {
        Alamofire.request(url, method: .post, parameters: parameters)
            .authenticate(user: accountSID, password: auth)
            .responseString { response in
                debugPrint(response)
        }
    }
}
