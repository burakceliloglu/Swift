//
//  Currency.swift
//  LOTRConverter
//
//  Created by Burak Celiloglu on 17.02.2025.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case silverPenny = 100
    case silverPiece = 400
    case goldPenny = 1600
    case goldPiece = 6400
    case copperPenny = 1
    case bronzToken = 10
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        case .copperPenny:
                .copperpenny
        case .bronzToken:
                .bronztoken
        }
    }
    
    var name: String {
        switch self {
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        case .copperPenny:
            "Copper Penny"
        case .bronzToken:
            "Bronz Token"
        }
    }
    
    func convert(_ amountString: String, to currency: Currency) -> String {
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        let convertedAmount = doubleAmount * self.rawValue / currency.rawValue
        return String(format: "%.2f", convertedAmount)
    }
}
