//
//  DeskController.swift
//  tender
//
//  Created by 酒玖长安 on 2/17/19.
//  Copyright © 2019 VincentL. All rights reserved.
//


import UIKit
import Firebase

class DeskController: UIViewController, UITableViewDelegate,UITableViewDataSource {

//    let image1 = UIImage(named: "Card")
//    let image2 = UIImage(named: "Card")
//    let testData = [image1, image2]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(UINib(nibName: "CardViewCell", bundle: nil), forCellReuseIdentifier: "CardViewCell")
//        self.tableView.rowHeight=470.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCellidentifier") as! UITableViewCell

        cell.imageView?.image = UIImage(named:"Card")


        return cell
    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCellidentifier") as UITableViewCell!
//
//        let image = cell?.viewWithTag(100) as! UIImage
//
////         cell.imageView?.image = UIImage(named:"Card")
//
//        return cell!
//    }
//
}
