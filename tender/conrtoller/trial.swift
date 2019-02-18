//
//  trial.swift
//  tender
//
//  Created by VincentL on 2/17/19.
//  Copyright © 2019 VincentL. All rights reserved.
//


import UIKit
import Firebase

class trialViewController: UIViewController {
    @IBOutlet weak var view3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func Buttom2Pressed(_ sender: UIButton) {
        view3.backgroundColor = UIColor.red
    }
}
