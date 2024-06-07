//
//  ViewController.swift
//  MoreScreens
//
//  Created by Burak Celiloglu on 22.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var takenPassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonOK(_ sender: Any) {
        takenPassword = textField.text!
        if takenPassword == "12345" {
            performSegue(withIdentifier: "toSecond", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            var destination = segue.destination as! SecondViewViewController
            destination.toPaste = takenPassword
        }
    }
}

