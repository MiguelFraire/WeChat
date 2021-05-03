//
//  WelcomeViewController.swift
//  WeChat
//
//  Created by Miguel Fraire on 3/25/21.
//
//
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.layer.cornerRadius = registerButton.frame.size.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.size.height / 2
        titleLabel.text = ""
        let textToAnimate = K.appName
        var delay = 2.0
        for char in textToAnimate {
            Timer.scheduledTimer(withTimeInterval: 0.1*delay, repeats: false) { (timer) in
                self.titleLabel.text?.append(char)
            }
            delay += 1.0
        }
        
    }
    

}
