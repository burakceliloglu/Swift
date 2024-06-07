//
//  ViewController.swift
//  TableView
//
//  Created by Burak Celiloglu on 26.04.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var heroesNames = [String]()
    var heroesImages = [String] ()
    var selectedName = ""
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        heroesNames.append("Batman")
        heroesNames.append("Superman")
        heroesNames.append("Ironman")
        heroesNames.append("Spiderman")

        heroesImages.append("batman")
        heroesImages.append("superman")
        heroesImages.append("ironman")
        heroesImages.append("spiderman")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroesNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = heroesNames[indexPath.row]
        return cell
    }
    
 
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                heroesNames.remove(at: indexPath.row)
                heroesImages.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .automatic)
            }
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = heroesNames[indexPath.row]
        selectedImage = heroesImages[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSuperhero = selectedName
            destinationVC.selectedSuperheroImage = selectedImage
        }
    }
}

