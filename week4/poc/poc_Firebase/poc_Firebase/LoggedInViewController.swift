//
//  LoggedInViewController.swift
//  poc_Firebase
//
//  Created by Ramon Schriks on 20-11-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedInViewController: UIViewController {
    @IBAction func logoutPressed(_ sender: UIButton) {
        do {
            _ = try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
        } catch {
           print("error signing out")
        }
    }
}
