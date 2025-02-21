//
//  CurrencyTip.swift
//  LOTRConverter
//
//  Created by Burak Celiloglu on 20.02.2025.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    var message: Text? = Text("You can tap on the currency icon to change the currency of the values")
    var image: Image? = Image(systemName: "hand.tap.fill")
}

