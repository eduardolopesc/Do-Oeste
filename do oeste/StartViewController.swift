//
//  StartViewController.swift
//  do oeste
//
//  Created by Eduardo Lopes de Carvalho on 17/08/20.
//  Copyright © 2020 Eduardo Lopes de Carvalho. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn
import AuthenticationServices

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        let user = Auth.auth().currentUser
        if user?.email != nil {
            print("ja está logado")
            emailLabelText = user?.email as! String
            if UserDefaults.standard.string(forKey: "logadoGoogle") == "sim" {
                emailLabelText = emailLabelText + "\n(Google)"
                self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
            }
            else {
                self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
                
            }}
        else {
            if  UserDefaults.standard.string(forKey: "logadoApple") == "não" {}
            else {
                emailLabelText = UserDefaults.standard.string(forKey: "userEmail") ?? "erro"
                //      self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
            }
        }
    }
}


