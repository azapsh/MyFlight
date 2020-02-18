//
//  Airport.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 15.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import CoreLocation

class Airport {
    var name : String
    var location: CLLocationCoordinate2D
    
    init(name:String, location:CLLocationCoordinate2D) {
          self.name = name
          self.location = location
      }
}
