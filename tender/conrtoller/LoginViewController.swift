//
//  LoginViewController.swift
//  tender
//
//  Created by VincentL on 2/17/19.
//  Copyright © 2019 VincentL. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func logInPressed(_ sender: UIButton) {
        
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print (error)
            }
            else{
                print("login successful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
                
            }
        }
    }
}
