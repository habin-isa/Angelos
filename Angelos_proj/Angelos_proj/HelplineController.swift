//
//  HelplineDirectory.swift
//  Angelos_proj
//
//  Created by Habin Kim on 04/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import UIKit

class HelplineController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func readFile1(_ sender: Any) {
        
        self.textView.text = load(file: "directory")
    }
    
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
    
    @IBAction func DisplayText(_ sender: Any) {
        self.textView.text = load(file: "directory")
    }
    
}

