//
//  User.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import Foundation

class User{
    var id: Int?
    var name: String?
    var karma: Int?
    
    init(id: Int, name: String, karma: Int) {
        self.id = id
        self.name = name
        self.karma = karma
    }
    
}
