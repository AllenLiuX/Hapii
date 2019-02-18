//
//  RegisterViewController.swift
//  tender
//
//  Created by VincentL on 2/17/19.
//  Copyright © 2019 VincentL. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        //Firebase Authen here
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil{
                print(error!)
            }
            else{
                //sucess
                print("register successful!")
//                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
    }
    
}
