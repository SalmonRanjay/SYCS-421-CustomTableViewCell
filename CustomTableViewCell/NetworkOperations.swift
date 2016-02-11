//
//  NetworkOperations.swift
//  CustomTableViewCell
//
//  Created by Ranjay Salmon on 2/10/16.
//  Copyright © 2016 Ranjay Salmon. All rights reserved.
//

import UIKit

class NetworkOperations: NSObject {
    
    
    /**
        Makes a network request using NSURLSession
        Networks request is fullfiled with NSURLSession.dataTaskWithURL();
        
        - Parameter ([String:AnyObject]?) -> Void : A closure function that takes an Optional dictionary of type String:AnyObject
        - Returns: Void
    */
    class func makeGetRequest(completion: (result: [String:AnyObject]?)-> Void){
        
        let session = NSURLSession.sharedSession();
        //let config = NSURLSessionConfiguration.defaultSessionConfiguration();
        
        let randomMeURL = NSURL(string: "http://api.randomuser.me/?results=10");
        
        let task = session.dataTaskWithURL(randomMeURL!) { (data , response, error) -> Void in
            
            do {
                let jsonDictionary = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! [String:AnyObject]
                
                completion(result: jsonDictionary);
                
            } catch{
                
            }
        }
        
        task.resume();
        
    }
    
}
