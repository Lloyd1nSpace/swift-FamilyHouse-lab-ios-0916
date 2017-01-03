//
//  CharacterCollectionViewController.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class CharacterCollectionViewController: UICollectionViewController {

    var characters: [Character]!
    var filmLocation: FilmLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCharacterData()
        navigationItem.title = "Characters"
        
    }
    
    func generateCharacterData() {
        characters = [
            Character(name: "Carl", realLifeName: "Reginald VelJohnson", tvSeries: .familyMatters, currentLocation: filmLocation, image: #imageLiteral(resourceName: "carl")),
            Character(name: "Danny", realLifeName: "Bob Saget", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "danny")),
            Character(name: "DJ", realLifeName: "Candace Cameron-Bure", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "dj")),
            Character(name: "Eddie", realLifeName: "Darius McCray", tvSeries: .familyMatters, currentLocation: filmLocation, image: #imageLiteral(resourceName: "eddie")),
            Character(name: "Jesse", realLifeName: "John Stamos", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "jesse")),
            Character(name: "Joey", realLifeName: "Dave Coulier", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "joey")),
            Character(name: "Kimmy", realLifeName: "", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "kimmy")),
            Character(name: "Laura", realLifeName: "Kelly Shanygne Williams", tvSeries: .familyMatters, currentLocation: filmLocation, image: #imageLiteral(resourceName: "laura")),
            Character(name: "Michelle", realLifeName: "Mary-Kate & Ashley Olsen", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "michelle")),
            Character(name: "Rebecca'", realLifeName: "Lori Loughlin", tvSeries: .familyMatters, currentLocation: filmLocation, image: #imageLiteral(resourceName: "rebecca")),
            Character(name: "Stephanie", realLifeName: "Jodie Sweetin", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "stephanie")),
            Character(name: "Steve", realLifeName: "Jaleel White", tvSeries: .familyMatters, currentLocation: filmLocation, image: #imageLiteral(resourceName: "steve")),
            Character(name: "Waldo", realLifeName: "Jaleel White", tvSeries: .fullHouse, currentLocation: filmLocation, image: #imageLiteral(resourceName: "Waldo"))
        ]
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCollectionCell", for: indexPath) as! CharacterCollectionViewCell
        cell.character = characters[indexPath.row]
        return cell
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        
    }
}
