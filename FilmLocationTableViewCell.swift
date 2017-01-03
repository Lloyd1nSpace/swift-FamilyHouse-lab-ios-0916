//
//  FilmLocationTableViewCell.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class FilmLocationTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tvSeriesLabel: UILabel!
    
    var filmLocation: FilmLocation! {
        didSet {
            nameLabel.text = filmLocation.name
            addressLabel.text = filmLocation.address
            tvSeriesLabel.text = filmLocation.tvSeries.description
        }
    }
}
