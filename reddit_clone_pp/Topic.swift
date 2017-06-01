//
//  Post.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import Foundation

class Topic{
    var id: Int?
    var text: String?
    var community: String?
    var upvotes: Int?
    var commentsArray = [String]()
    var authorId: Int?
    
    init(id: Int, text: String, community: String, upvotes: Int, authorId: Int){
        self.id = id
        self.text = text
        self.community = community
        self.upvotes = upvotes
        self.authorId = authorId
    }
    
}
