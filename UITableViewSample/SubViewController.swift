//
//  SubViewController.swift
//  UITableViewSample
//
//  Created by 中山 陽介 on 12/16/15.
//  Copyright © 2015 Yosuke Nakayama. All rights reserved.
//
import Foundation
import UIKit

class SubViewController: UIViewController{

    @IBOutlet weak var label: UILabel!
    var sonyu: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = sonyu
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
