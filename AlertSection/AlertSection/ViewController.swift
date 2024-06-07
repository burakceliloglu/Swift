//
//  ViewController.swift
//  AlertSection
//
//  Created by Burak Celiloglu on 23.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUp(_ sender: Any) {
        if emailTextField.text == "" {
            createAlert(message: "Email eksik kalamaz.", title: "Hata!")
        } else if passwordTextField.text == "" {
            createAlert(message: "Şifre eksik girilemez.", title: "Hata!")
        } else if passwordTextField.text != password2TextField.text {
            createAlert(message: "Şifreler birbirini tutmalı.", title: "Hata!")
        } else {
            createAlert(message: "Başarılır giriş.", title: "Tebrikler!")
        }
    }
    
    func createAlert(message : String, title : String) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Email eksik.")
        }
        
        alertMessage.addAction(alertAction)
        self.present(alertMessage, animated: true)
    }
}

