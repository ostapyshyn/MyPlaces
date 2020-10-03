//
//  ViewController.swift
//  MyPlaces
//
//  Created by Volodymyr Ostapyshyn on 22.09.2020.
//

import UIKit

class ViewController: UITableViewController {
    
    let places = Place.getPlaces()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel?.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
        cell.typeLabel.text = places[indexPath.row].type
        
        cell.imageOfPlace?.image = UIImage(named: places[indexPath.row].image)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {
        
    }

}

