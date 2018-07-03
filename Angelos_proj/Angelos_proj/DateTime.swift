//
//  DateTime.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 02/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class DateTime {
    
    func formatDate(currentDateTime: Date = Date()) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm yyyy-MM-dd"
        let myString = formatter.string(from: currentDateTime)
        let dateTime = "Message Sent " + myString
        return dateTime
    }
    
}
