//
//  ViewController.swift
//  poc_Firebase
//
//  Created by Ramon Schriks on 20-11-17.
//  Copyright © 2017 Ramon Schriks. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var userEmailField: UITextField!
    @IBOutlet weak var userPasswordField: UITextField!
    @IBOutlet weak var errorMessageField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorMessageField.isHidden = true
    }
    
    private func showErrorMessage(msg: String) {
        userEmailField.text = ""
        userPasswordField.text = ""
        
        errorMessageField.isHidden = false
        errorMessageField.text = msg
    }
    
    private func checkValidCredentials(email: String, password: String) -> Bool {
        if !email.contains("@") || !email.contains(".") {
            return false
        }
        return email.count >= 8 && password.count >= 8
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = userEmailField.text,
            let password = userPasswordField.text {
            
            if (!checkValidCredentials(email: email, password: password)) {
                showErrorMessage(msg: "Invalid input for email or password")
                return
            }
                
            Auth.auth().signIn(withEmail: email, password: password, completion: { user, error in
                if error != nil {
                    self.showErrorMessage(msg: "Login attempt failed: Incorrect credentials")
                    return
                }
                
                self.proceedLogin()
                print("success login!")
            })
        }
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
       if let email = userEmailField.text,
            let password = userPasswordField.text {
        
            if (!checkValidCredentials(email: email, password: password)) {
                showErrorMessage(msg: "Invalid input for email or password")
                return
            }
            
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
                if error != nil {
                    self.showErrorMessage(msg: "Cannot create account: Already exists")
                    return
                }
                
                self.errorMessageField.isHidden = true
                print("success created!")
            })
        }
    }
    
    private func proceedLogin() {
        self.errorMessageField.isHidden = true
        self.userPasswordField.text = ""

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInViewController = storyboard.instantiateViewController(withIdentifier: "LoggedInViewController") as! LoggedInViewController
        self.present(loggedInViewController, animated: true, completion: nil)
    }
}

