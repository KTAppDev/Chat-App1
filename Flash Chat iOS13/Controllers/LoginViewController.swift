//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {


    @IBOutlet weak var infolabel: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        infolabel.text = ""
    }
    
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
    
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
         
            if error != nil {
                print("This Email is not registered")
                self.infolabel.text = "This Email is not registered"
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
        }
        
        
    }
    
    @IBAction func loginKen(_ sender: UIButton) {

        Auth.auth().signIn(withEmail: "ken@mail.com", password: "111111") { authResult, error in
         
            if error != nil {
                print("This Email is not registered")
                self.infolabel.text = "This Email is not registered"
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
        }
        
    

    @IBAction func loginClint(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: "clint@mail.com", password: "123456") { authResult, error in
         
            if error != nil {
                print("This Email is not registered")
                self.infolabel.text = "This Email is not registered"
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
}
}
