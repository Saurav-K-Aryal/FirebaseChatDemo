//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Saurav Aryal on 4/5/16.
//  Copyright © 2016 Saurav Aryal. All rights reserved.
//

import UIKit

import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var AppLabel: UILabel!
    
    
    
    @IBOutlet weak var goChatBtn: UIButton!



    @IBAction func goChatBtnClickd(sender: AnyObject) {
        //self.performSegueWithIdentifier("goChat", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // myRootRef.setValue("Do you have data? You'll love Firebase.")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

