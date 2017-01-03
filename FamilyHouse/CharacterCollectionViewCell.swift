//
//  CharacterCollectionViewCell.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var character: Character! {
        didSet {
            characterImageView.image = character.image
            nameLabel.text = character.name
        }
    }
}
