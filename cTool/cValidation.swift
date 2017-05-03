//
//  validation.swift
//  cTool
//
//  Created by Do Thanh Cong on 4/13/17.
//  Copyright © 2017 Do Thanh Cong. All rights reserved.
//

import Foundation

public class cValidation: NSObject {
    func matches(for regex: String, in text: String) -> Bool {
        if text.characters.count == 0 {
            return false
        }
        let stringTest = NSPredicate(format:"SELF MATCHES %@", regex)
        return stringTest.evaluate(with: text)
    }
    
    public func email(_ email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return self.matches(for: emailRegEx, in: email)
    }
    
    public func phoneNumber(_ phone:String) -> Bool {
        let phoneRegEx = "\\d"
        return self.matches(for: phoneRegEx, in: phone)
    }
    
    public func demoTest () {
        print("Testing")
    }
    
}
