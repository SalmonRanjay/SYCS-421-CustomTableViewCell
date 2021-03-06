//
//  randomMeAPIService.swift
//  CustomTableViewCell
//
//  Created by Ranjay Salmon on 2/10/16.
//  Copyright © 2016 Ranjay Salmon. All rights reserved.
//

import UIKit

struct randomMeAPIService {
    
    
    /**
        RandomMeApi Service function that formats the JSON response received from NetWorkOperations Class
     
        - Parameter completion(results [User])->Void : Closuer that takes an Array of Type [User]
        - Returns: Void
    */
    
    static  func retrieveAPIData( completion: (result:[User])-> Void ){
        
        var users: [User] = [User]();
        
        NetworkOperations.makeGetRequest { (result) -> Void in
            //
            if let resultsArray = result!["results"] as! [[String:AnyObject]]?{
                
                for tempUser in resultsArray{
                    
                    var name:String = "";
                    var number: String = "";
                    var userLocation: String = "";
                    var userPic: NSData = NSData();
                    
                    if let user = tempUser["user"] {
                    
                        name = user["username"] as! String;
                        number = user["cell"] as! String;
                        
                        if let loc = user["location"] {
                            userLocation = " \(loc!["street"]), \(loc!["city"]), \(loc!["state"]), \(loc!["zip"]) ";
                        }
                        
                        if let pic = user["picture"] {
                        
                            let url = NSURL(string: pic!["large"] as! String)
                            let data = NSData(contentsOfURL: url!)
                            userPic = data!;
                        }
                        
                    }
                    let newUser:User = User(username: name, phoneNumber: number, address: userLocation, picture: userPic)
                    users.append(newUser);
                }
            }
            
            completion(result: users);
        }
        
    }
}