//
//  CLLocationCoordinate2D+extension.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 15.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D {
    func distance(from: CLLocationCoordinate2D) -> CLLocationDistance {
        let destination=CLLocation(latitude:from.latitude,longitude:from.longitude)
        return CLLocation(latitude: latitude, longitude: longitude).distance(from: destination)
    }
}
