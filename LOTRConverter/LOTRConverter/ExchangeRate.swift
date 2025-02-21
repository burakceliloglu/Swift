//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Burak Celiloglu on 15.02.2025.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // left image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // text
            Text(text)
            
            // right image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece , text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}


