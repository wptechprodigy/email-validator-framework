//
//  Validator.swift
//  EmailValidator
//
//  Created by waheedCodes on 21/11/2020.
//

import Foundation

public struct Validator {
    public func isEmailValid(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailCheck = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailCheck.evaluate(with: email)
    }
}
