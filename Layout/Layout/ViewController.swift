//
//  ViewController.swift
//  Layout
//
//  Created by Burak Celiloglu on 21.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        // NSTextAlignment.center
        myLabel.frame = CGRect(x: width * 0.5 - 50, y: height * 0.5 - 50, width: 100, height: 100)
        view.addSubview(myLabel)
        
        // Button
        let myButton = UIButton()
        myButton.setTitle("Change", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.65, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(<#T##target: Any?##Any?#>, action: #selector(ViewController.myFunc), for: UIControl.Event.touchUpInside)
    }

    // or @objc yaz.
    @IBAction func myFunc (){
        print("Clicked.")
    }
}

 
