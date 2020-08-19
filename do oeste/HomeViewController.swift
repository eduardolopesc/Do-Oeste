//
//  HomeViewController.swift
//  do oeste
//
//  Created by Eduardo Lopes de Carvalho on 17/08/20.
//  Copyright © 2020 Eduardo Lopes de Carvalho. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase

class HomeViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "telaHome.png")!)
        
        
        emailLabel.text = emailLabelText
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutAction(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            UserDefaults.standard.set("não", forKey: "logadoGoogle")
            UserDefaults.standard.set("não", forKey: "logadoApple")
            
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
        
    }
    
    
}
