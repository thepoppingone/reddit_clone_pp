//
//  Post.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import Foundation

class Post{
    var id: Int?
    var title: String?
    var text: String?
    var community: String?
    
    init(id: Int, title: String, text: String, community: String){
        self.id = id
        self.title = title
        self.text = text
        self.community = community
    }
    
}
