//
//  ViewController.swift
//  SimpleTask-Maria
//
//  Created by Student on 2019-11-20.
//  Copyright © 2019 Centennial College. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func createu(_ sender: UIButton) {
        let emailid = email.text
        let pswd = password.text
        
        Auth.auth().createUser(withEmail: emailid!, password: pswd!) { authResult, error in
            // ...
        }
    }
    

}
