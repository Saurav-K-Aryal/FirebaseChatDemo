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

var chatArray = [String]()

class ChatViewController: UIViewController,UITextViewDelegate {
    
    //var dummyObject?
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
            
            print(snapshot.value);
            let stringMirror = snapshot.value as! String;
            print(stringMirror);
//           let stringMirror = Mirror(reflecting: snapshot.value)
            
//           print(stringMirror)
           chatArray.append(stringMirror)
            print(chatArray);
        
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}