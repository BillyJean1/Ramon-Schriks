//
//  ViewController.swift
//  poc_Heatmap
//
//  Created by Ramon Schriks on 20-11-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import Foundation
import GoogleMaps
import UIKit


class ViewController: UIViewController {
    private let demoLat = 51.6497423
    private let demoLng = 5.0478387
    private let demoZoom: Float = 16

    private var heatmapLayer: GMUHeatmapTileLayer!

    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: demoLat, longitude: demoLng, zoom: demoZoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        heatmapLayer = GMUHeatmapTileLayer()
        heatmapLayer.map = mapView
        addHeatmap()
        
        view = mapView
    }
    
    func addHeatmap()  {
        var list = [GMUWeightedLatLng]()
        do {
            // Get the data: latitude/longitude positions of police stations.
            if let path = Bundle.main.url(forResource: "efteling_rides", withExtension: "json") {
                let data = try Data(contentsOf: path)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [[String: Any]] {
                    for item in object {
                        let lat = item["lat"]
                        let lng = item["lng"]
                        let coords = GMUWeightedLatLng(coordinate: CLLocationCoordinate2DMake(lat as! CLLocationDegrees, lng as! CLLocationDegrees), intensity: 1.0)
                        list.append(coords)
                    }
                } else {
                    print("Could not read the JSON.")
                }
            }
        } catch {
            print(error.localizedDescription)
        }
        // Add the latlngs to the heatmap layer.
        heatmapLayer.weightedData = list
    }
}

