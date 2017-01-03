//
//  FilmLocationTableViewController.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewController: UITableViewController {

    var filmLocations: [FilmLocation]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateLocationData()
        tableView.reloadData()
    }
    
    func generateLocationData() {
     filmLocations = [
        FilmLocation(name: "The Spot", address: "1041 Pugsley Ave", tvSeries: .familyMatters),
        FilmLocation(name: "Madness", address: "767 5th Ave", tvSeries: .fullHouse),
        FilmLocation(name: "The Real", address: "Spring St.", tvSeries: .familyMatters),
        FilmLocation(name: "Wild Out", address: "Bedford Ave.", tvSeries: .fullHouse),
        FilmLocation(name: "Beach Boys", address: "Coney Island", tvSeries: .familyMatters)
        ]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmLocations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! FilmLocationTableViewCell
        cell.filmLocation = filmLocations[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "filmSegue" { return }
        if let dest = segue.destination as? CharacterCollectionViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.filmLocation = filmLocations[indexPath.row]
        }
    }
}
