//
//  CreateUsernameViewController.swift
//  Makestagram
//
//  Created by Hank on 2017/7/21.
//  Copyright © 2017年 Hank. All rights reserved.
//

import UIKit
import Foundation
import FirebaseAuthUI
import FirebaseDatabase
import FirebaseCore
import FirebaseAuth.FIRAuth
class CreatUsernameViewController :UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func NextButton(_ sender: Any) {
        guard let firUser = Auth.auth().currentUser,
            let username = usernameTextField.text,
            !username.isEmpty else { return } //bug
        
        UserService.create(firUser, username: username) { (user) in
            guard let user = user else {
                // handle error
                return
            }
            
            User.setCurrent(user)
            
            let storyboard = UIStoryboard(name: "Main", bundle: .main)
            if let initialViewController = storyboard.instantiateInitialViewController() {
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
            }
}
}
}
