//
//  Character.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

struct Character {
    let name: String
    let realLifeName: String
    let tvSeries: TVSeries
    var currentLocation: FilmLocation
    let image: UIImage
    
    func canReportToSet(on location: FilmLocation) -> Bool {
        return location.tvSeries == self.tvSeries ? true : false
    }
    
    mutating func reportToSet(on location: FilmLocation) {
        if canReportToSet(on: location) {
            currentLocation = location
        }
    }
}
