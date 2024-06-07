//
//  DetailViewController.swift
//  CitiesGuide
//
//  Created by Burak Celiloglu on 9.05.2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityRegion: UILabel!
    var selectedCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = selectedCity?.image
        cityName.text = selectedCity?.name
        cityRegion.text = selectedCity?.region
    }
    
    
}
