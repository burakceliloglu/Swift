//
//  ViewController.swift
//  CitiesGuide
//
//  Created by Burak Celiloglu on 9.05.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cityTableView: UITableView!
    
    var cityArray = [City]()
    
    var userSelected : City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cityTableView.delegate = self
        cityTableView.dataSource = self
        
        let istanbul = City(name: "Istanbul", region: "Marmara", image: UIImage(named: "istanbul")!)
        let ankara = City(name: "Ankara", region: "İç Anadolu", image: UIImage(named: "ankara")!)
        let izmir = City(name: "Izmir", region: "Ege", image: UIImage(named: "izmir")!)
        let antalya = City(name: "Antalya", region: "Akdeniz", image: UIImage(named: "antalya")!)
        let diyarbakir = City(name: "Diyarbakır", region: "Güneydoğu Anadolu", image: UIImage(named: "diyarbakir")!)
        
        cityArray = [istanbul, ankara, izmir, antalya, diyarbakir]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelected = cityArray[indexPath.row]
        performSegue(withIdentifier: "toCityDetails", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCityDetails" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedCity = userSelected
        }
    }
}

