//
//  LocationService.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 15.02.2020.
//  Copyright © 2020 Ахмед Фокичев. All rights reserved.
//

import Foundation
import CoreLocation
import RxSwift

protocol LocationServiceDelegate: class {
    func locationManager(didChangeAuthorization status: CLAuthorizationStatus)
}

class LocationService : NSObject, CLLocationManagerDelegate {
    
    static let shared = LocationService()
    var llcmanager : CLLocationManager?
    var rxlocation = BehaviorSubject<CLLocationCoordinate2D>(value: CLLocationCoordinate2D(latitude: 0, longitude: 0))
    var location = CLLocationCoordinate2D()
    weak var delegate: LocationServiceDelegate?
    
    func start() -> CLAuthorizationStatus {
        llcmanager = CLLocationManager()
        llcmanager?.desiredAccuracy = kCLLocationAccuracyBest
        llcmanager?.delegate = self
        llcmanager?.requestAlwaysAuthorization()
        llcmanager?.requestWhenInUseAuthorization()
        llcmanager?.startUpdatingLocation()
        
        rxlocation.subscribe(onNext: { (point) in
            self.location.latitude = point.latitude
            self.location.longitude = point.longitude
        }).disposed(by: DisposeBag())
        return CLLocationManager.authorizationStatus()
    }
    
    func showPermission() {
        llcmanager?.requestWhenInUseAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue: CLLocationCoordinate2D = manager.location!.coordinate
        rxlocation.onNext(locValue)
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case CLAuthorizationStatus.restricted:
            print("GPS Restricted Access to location")
        case CLAuthorizationStatus.denied:
            print("GPS User denied access to location")
        case CLAuthorizationStatus.notDetermined:
            print("GPS Status not determined")
        default:
            print("GPS Allowed to location Access")
        }
        delegate?.locationManager(didChangeAuthorization: status)
    }
}
