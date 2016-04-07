//
//  ChatViewController.swift
//  FirebaseDemo
//
//  Created by Saurav Aryal on 4/7/16.
//  Copyright © 2016 Saurav Aryal. All rights reserved.
//

import Foundation

import UIKit

import Firebase

var chatArray = [NSString]()

class ChatViewController: UIViewController,UITextViewDelegate {
    
    
    @IBOutlet weak var textDisplay: UITextView!
    
    @IBOutlet weak var sendMsgBtn: UIButton!
    
    @IBOutlet weak var userText: UITextField!
    
    // Create a reference to a Firebase location
    var myRootRef = Firebase(url:"https://3369keshari.firebaseio.com")
    
    @IBAction func sendMsgBtnClicked(sender: AnyObject) {
        myRootRef.setValue(userText.text!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
//           let stringMirror = Mirror(reflecting: snapshot.value)
//           print(stringMirror)
//            chatArray.append(snapshot.value) as NSString!
        
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}