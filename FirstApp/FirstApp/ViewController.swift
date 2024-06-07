//
//  ViewController.swift
//  FirstApp
//
//  Created by Burak Celiloglu on 19.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        label.text = "Burak Celiloglu"
    }
}

