//
//  DetailsViewController.swift
//  TableView
//
//  Created by Burak Celiloglu on 6.05.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var superheroView: UIImageView!
    
    @IBOutlet weak var superheroLabel: UILabel!
    
    var selectedSuperhero = ""
    var selectedSuperheroImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        superheroView.image = UIImage(named: selectedSuperheroImage)
        superheroLabel.text = selectedSuperhero
        
        
    }
}
