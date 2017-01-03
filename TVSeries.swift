//
//  TVSeries.swift
//  FamilyHouse
//
//  Created by Lloyd W. Sykes on 1/2/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum TVSeries {
    case familyMatters
    case fullHouse
    var description: String { return self == .familyMatters ? "Family Matters" : "Full House" }
}
