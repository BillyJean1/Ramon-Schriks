//
//  ViewController.swift
//  poc_LocalNotifications
//
//  Created by Ramon Schriks on 11-12-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let notificationService = NotificationService(userName: "Ramon")

    override func viewDidLoad() {
        notificationService.sendRandomNotification()
    }
}

