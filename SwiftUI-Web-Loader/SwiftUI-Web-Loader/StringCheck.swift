//
//  StringCheck.swift
//  SwiftUI-Web-Loader
//
//  Created by RANA  on 4/6/24.
//

import Foundation

struct StringCheck {
    
    let original : String
    
    init(original: String) {
        self.original = original
    }
    
    func CheckandIncludeHTTPS() -> String {
        
        if original.hasPrefix("https://"){
            return original
        }
        else {
            
            return "https://" + original
        }
    }
}
