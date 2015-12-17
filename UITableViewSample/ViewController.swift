//
//  ViewController.swift
//  UITableViewSample
//
//  Created by 中山 陽介 on 12/16/15.
//  Copyright © 2015 Yosuke Nakayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "test"
        cell.detailTextLabel?.text = "DetailTextLabel"
        print(cell)
        return cell
    
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){

            // SubViewController へ遷移するために Segue を呼び出す
        performSegueWithIdentifier("toSubViewController",sender: nil)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "toSubViewController"){
            let subVC: SubViewController = (segue.destinationViewController as? SubViewController)!
            subVC.sonyu = "うにょーん"

        }
            // SubViewController のselectedImgに選択された画像を設定する
        
    }

}

