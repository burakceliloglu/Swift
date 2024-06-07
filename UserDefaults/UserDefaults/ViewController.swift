//
//  ViewController.swift
//  UserDefaults
//
//  Created by Burak Celiloglu on 22.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var notTextField: UITextField!
    
    @IBOutlet weak var zamanTextField: UITextField!
    
    @IBOutlet weak var notLabel: UILabel!
    
    @IBOutlet weak var zamanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenNot = kaydedilenNot as? String {
            notLabel.text = "Notunuz: \(gelenNot)"
        }
        if let gelenZaman = kaydedilenZaman as? String {
            zamanLabel.text = "Ne zaman yapılacak? \(gelenZaman)"
        }
    }

    @IBAction func kaydetButton(_ sender: Any) {
        
        UserDefaults.standard.setValue(notTextField.text!, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text!, forKey: "zaman")
        
        notLabel.text = "Notunuz: \(notTextField.text!)"
        zamanLabel.text = "Ne zaman yapılacak? \(zamanTextField.text!)"

    }
    
    @IBAction func silButton(_ sender: Any) {
        let kaydedilenNot = UserDefaults.standard.object(forKey: "not")
        let kaydedilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if (kaydedilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            notLabel.text = "Notunuz"
        }
        if (kaydedilenZaman as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Ne zaman yapılacağı"
        }
    }
    
}

