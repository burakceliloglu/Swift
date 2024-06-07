//
//  SpecialUser.swift
//  SwiftOOP
//
//  Created by Burak Celiloglu on 9.05.2024.
//

import Foundation

class SpecialUser : User {
    
    func speacilFunction() {
        print("special function.")
    }
    
    override func userFunction() {
        super.userFunction()
        print("called from speacil user.")
    }
}
