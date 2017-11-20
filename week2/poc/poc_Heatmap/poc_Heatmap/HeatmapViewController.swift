/* Copyright (c) 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import GoogleMaps
import UIKit

class HeatmapViewController: UIViewController, GMSMapViewDelegate {
    private var mapView: GMSMapView!
    private var heatmapLayer: GMUHeatmapTileLayer!
    private var button: UIButton!
    
    private let demoLat = 51.6497423
    private let demoLng = 5.0478387
    private let demoZoom: Float = 16
    
    private var gradientColors = [UIColor.green, UIColor.red]
    private var gradientStartPoints = [0.2, 1.0] as? [NSNumber]
    
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: demoLat, longitude: demoLng, zoom: demoZoom)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.delegate = self
        self.view = mapView
    }
    
    override func viewDidLoad() {
        // Set heatmap options.
        heatmapLayer = GMUHeatmapTileLayer()
        heatmapLayer.radius = 80
        heatmapLayer.opacity = 0.8
        heatmapLayer.gradient = GMUGradient(colors: gradientColors,
                                            startPoints: gradientStartPoints!,
                                            colorMapSize: 256)
        addHeatmap()
        
        // Set the heatmap to the mapview.
        heatmapLayer.map = mapView
    }
    
    // Parse JSON data and add it to the heatmap layer.
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
    
    @objc func removeHeatmap() {
        heatmapLayer.map = nil
        heatmapLayer = nil
        // Disable the button to prevent subsequent calls, since heatmapLayer is now nil.
        button.isEnabled = false
    }
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        print("You tapped at \(coordinate.latitude), \(coordinate.longitude)")
    }
}
