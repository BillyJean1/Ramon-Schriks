//
//  ViewController.swift
//  poc_LocalNotifications
//
//  Created by Ramon Schriks on 11-12-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let notificationService = NotificationService()

    override func viewDidLoad() {
        notificationService.sendNotification(
            withIdentifier: "location",
            withTitle: "Locatie bereikt!",
            withBody: "Gefeliciteerd, u heeft de gewenste locatie bereikt. Open de app om de beloning te verzilveren!"
        )
    }

}

