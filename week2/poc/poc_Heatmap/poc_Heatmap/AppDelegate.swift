//
//  AppDelegate.swift
//  poc_Heatmap
//
//  Created by Ramon Schriks on 20-11-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    private let googleApiKey = "AIzaSyCbx0RxEOZMXRbbM1TTkHkWQb06HzamETU"
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        GMSServices.provideAPIKey(googleApiKey)
        GMSPlacesClient.provideAPIKey(googleApiKey)
        return true
    }
}

