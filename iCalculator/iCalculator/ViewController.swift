//
//  ViewController.swift
//  iCalculator
//
//  Created by Burak Celiloglu on 21.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!

    
    @IBOutlet weak var secondText: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sumButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
        
    }
    
    @IBAction func difButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func divButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func multiplyButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
}

