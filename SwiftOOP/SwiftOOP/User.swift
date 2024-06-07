//
//  User.swift
//  SwiftOOP
//
//  Created by Burak Celiloglu on 6.05.2024.
//

import Foundation

enum UserType {
    case Admin
    case Normal
    case Unauthorized
}

class User {
    var isim : String
    var yas : Int
    var meslek : String
    var type : UserType
    
    init(isim: String, yas: Int, meslek: String, type: UserType) {
        self.isim = isim
        self.yas = yas
        self.meslek = meslek
        self.type = type
    }
    
    func userFunction() {
        print("For user class.")
    }
}
