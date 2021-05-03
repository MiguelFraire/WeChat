//
//  RegisterViewController.swift
//  WeChat
//
//  Created by Miguel Fraire on 3/25/21.
//
//
import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        print(e.localizedDescription)
                    }else{
                        // Navigate to chat view controller
                        self.performSegue(withIdentifier: K.registerSegue, sender: self)
                    }
                }
        }
    }
    
}
