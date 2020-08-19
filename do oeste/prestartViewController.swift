//
//  File.swift
//  do oeste
//
//  Created by Eduardo Lopes de Carvalho on 18/08/20.
//  Copyright © 2020 Eduardo Lopes de Carvalho. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn
import AuthenticationServices

class prestartViewController: UIViewController {

    override func viewDidLoad() {
        self.navigationController?.navigationBar.isHidden = true
self.performSegue(withIdentifier: "pretoStart", sender: self)
}
}
