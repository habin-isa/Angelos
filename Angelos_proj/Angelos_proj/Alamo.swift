//
//  Alamo.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import Alamofire

class Alamo {
    func request(url:String, parameters:Parameters, accountSID:String, auth:String) -> Void {
        Alamofire.request(url, method: .post, parameters: parameters)
            .authenticate(user: accountSID, password: auth)
            .responseString { response in
                debugPrint(response)
        }
    }
}
