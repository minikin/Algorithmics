//
//  roundToPlacesExtension.swift
//  Algorithmics
//
//  Created by Sasha Minikin on 1/18/16.
//  Copyright © 2016 Minikin. All rights reserved.
//

import Foundation

extension Double {
  /// Rounds the double to decimal places value
  func roundToPlaces(places:Int) -> Double {
    let divisor = pow(10.0, Double(places))
    return round(self * divisor) / divisor
  }
}