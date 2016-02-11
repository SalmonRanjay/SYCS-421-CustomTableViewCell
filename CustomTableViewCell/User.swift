//
//  User.swift
//  CustomTableViewCell
//
//  Created by Ranjay Salmon on 2/10/16.
//  Copyright © 2016 Ranjay Salmon. All rights reserved.
//

import UIKit

class User: NSObject {
    
    let username: String?;
    let phoneNumber: String?;
    let address: String?;
    let picture: NSData?;
    
    // class initializer or constructor
    init(username:String, phoneNumber:String, address: String, picture: NSData) {
        self.username = username;
        self.phoneNumber = phoneNumber
        self.address = address;
        self.picture = picture;
        super.init();
    }

}
