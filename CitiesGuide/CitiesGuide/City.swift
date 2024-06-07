//
//  City.swift
//  CitiesGuide
//
//  Created by Burak Celiloglu on 9.05.2024.
//

import Foundation
import UIKit

class City {
    var name : String
    var region : String
    var image : UIImage
    
    init(name: String, region: String, image: UIImage) {
        self.name = name
        self.region = region
        self.image = image
    }
}
