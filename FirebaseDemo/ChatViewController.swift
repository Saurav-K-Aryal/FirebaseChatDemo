//
//  ChatViewController.swift
//  FirebaseDemo
//
//  Created by Saurav Aryal on 4/7/16.
//  Copyright © 2016 Saurav Aryal. All rights reserved.
//



import UIKit
import Firebase



class ChatViewController: UIViewController{
    
    //var dummyObject?


    var chatArray = [String]()
    
    
    // Create a reference to a Firebase location
    var myRootRef = Firebase(url:"https://3369keshari.firebaseio.com")
    
   
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
            
            print(snapshot.value);
            let stringMirror = snapshot.value as! String;
            print(stringMirror);
//           let stringMirror = Mirror(reflecting: snapshot.value)
            
//           print(stringMirror)
           self.chatArray.append(stringMirror)
            print(self.chatArray);
        
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return chatArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LabelCell", forIndexPath: indexPath) 
        
        cell.textLabel?.text = "asdfasf"
        
        return cell
    }


}