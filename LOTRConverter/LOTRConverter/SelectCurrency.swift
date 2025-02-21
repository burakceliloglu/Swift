//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Burak Celiloglu on 15.02.2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack{
            //background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color.brown)
            
            VStack{
                //text
                Text("Select the currency you are starting with:")
                    .font(.headline)
                
                //currency icons
                IconGrid(selectedCurrency: $topCurrency)
                
                //text
                Text("Select the currency you would like to convert to:")
                    .font(.headline)
                    .padding(.top)
                    
                
                //currency icons
                IconGrid(selectedCurrency: $bottomCurrency)
                
                //done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding(.horizontal)
                .foregroundStyle(.white)
                
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPenny
    @Previewable @State var bottomCurrency: Currency = .goldPenny
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
