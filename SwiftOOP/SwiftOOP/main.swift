//
//  main.swift
//  SwiftOOP
//
//  Created by Burak Celiloglu on 6.05.2024.
//

import Foundation

let burak = User(isim: "Burak", yas: 21, meslek: "Student", type: .Admin)

print(burak.type)

let ahmet = SpecialUser(isim: "Ahmet", yas: 20, meslek: "Stundet", type: .Normal)

ahmet.speacilFunction()
ahmet.userFunction()

