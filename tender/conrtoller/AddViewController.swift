//
//  AddViewController.swift
//  tender
//
//  Created by VincentL on 2/17/19.
//  Copyright © 2019 VincentL. All rights reserved.
//

import UIKit
import Firebase

class AddViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
}
extension UIColor {
    
    convenience init(hexString:String) {
        
        let hexString:NSString = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) as NSString
        
        let scanner            = Scanner(string: hexString as String)
        
        if (hexString.hasPrefix("#")) {
            
            scanner.scanLocation = 1
            
        }
        
        var color:UInt32 = 0
        
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        
        let r = Int(color >> 16) & mask
        
        let g = Int(color >> 8) & mask
        
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
}
