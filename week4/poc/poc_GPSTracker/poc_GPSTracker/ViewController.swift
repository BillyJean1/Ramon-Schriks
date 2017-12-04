//
//  ViewController.swift
//  poc_GPSTracker
//
//  Created by Ramon Schriks on 04-12-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit
import GoogleMaps
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    let marker = GMSMarker()
    let path = GMSMutablePath()
 
    override func loadView() {
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 16)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        startGPSInterval()
    }
    
    private func startGPSInterval() {
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.updateLocation), userInfo: nil, repeats: true)
    }
    
    @objc func updateLocation() {
        if let location = locationManager.location {
            if let view = view as? GMSMapView {
                marker.position = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
                marker.map = view
                
                path.add(CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude))
                GMSPolyline(path: path).map = view
                
                view.camera = GMSCameraPosition.camera(withLatitude: location.coordinate.latitude, longitude: location.coordinate.longitude, zoom: 16)
            }
        }
    }
}

