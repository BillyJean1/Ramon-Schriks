//
//  NotificationService.swift
//  FootyScores
//
//  Created by Ramon Schriks on 23-10-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//
import Foundation
import UserNotifications

class NotificationService {
    let center = UNUserNotificationCenter.current()
    private let notifier: Notifier?
    

    init(userName: String) {
        notifier = Notifier(userName: userName)
        initNotificationSetupCheck()
    }
    
    func sendNotification(withIdentifier id: String, withTitle title: String, withBody body: String, withSubtitle subtitle: String = "") {
        let notification = UNMutableNotificationContent()
        notification.title = title
        notification.body = body
        notification.subtitle = subtitle
        
        let notificationTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: id, content: notification, trigger: notificationTrigger)
        
        center.add(request, withCompletionHandler: nil)
    }
    
    
    private func initNotificationSetupCheck() {
        center.requestAuthorization(options: [.alert])
        { (success, error) in
            if success {
                print("Permission Granted")
            } else {
                print("There was a problem!")
            }
        }
    }
    
    @objc public func sendRandomNotification() {
        _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.sendRandomNotification), userInfo: nil, repeats: false)
        
        if let notifier = notifier {
            let randomIndex = Int(arc4random_uniform(UInt32(notifier.messages?.count ?? 0)))
            let message = notifier.messages![randomIndex]
            
            sendNotification(withIdentifier: message[notifier.IDENTIFIER]!, withTitle: message[notifier.TITLE]!, withBody: message[notifier.BODY]!)
        }
    }
    
    struct Notifier {
        public let IDENTIFIER: String = "identifier"
        public let TITLE: String = "title"
        public let BODY: String = "body"

        public var messages: [[String: String]]?
        
        init(userName: String) {
            self.initMessages(userName: userName)
        }
        
        private mutating func initMessages(userName: String) {
            messages = [
                [
                    IDENTIFIER: "WELCOME_BACK",
                    TITLE: "Welkom terug!",
                    BODY: "Hi \(userName)! Bekijk nu de beloningen en ga aan de slag!",
                ],
                [
                    IDENTIFIER: "NEW_LOCATIONS",
                    TITLE: "Nieuwe locaties!",
                    BODY: "Hallo \(userName)! Er zijn nieuwe locaties. Bekijk ze en verdien punten!",
                ],
                [
                    IDENTIFIER: "NEW_EVENTS",
                    TITLE: "Nieuwe evenementen!",
                    BODY: "Hallo \(userName)! Er zijn nieuwe evenementen!",
                ]
            ]
        }
    }
}
