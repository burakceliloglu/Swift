//
//  SecondViewViewController.swift
//  MoreScreens
//
//  Created by Burak Celiloglu on 22.04.2024.
//

import UIKit

class SecondViewViewController: UIViewController {
    @IBOutlet weak var label2: UILabel!
    
    var toPaste = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = toPaste
    }
}
