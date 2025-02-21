//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Burak Celiloglu on 15.02.2025.
//

import SwiftUI

struct IconGrid: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        //currency icons
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if currency == selectedCurrency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedCurrency: Currency = .silverPiece
    IconGrid(selectedCurrency: $selectedCurrency)
}
