//
//  HomePostCollectionViewCell.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import UIKit

class HomeTopicCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var communityLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var upvoteButton: UIButton!
    @IBOutlet weak var downvoteButton: UIButton!
    @IBOutlet weak var upvotesLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    weak var collectionView: UICollectionView?
    
    var topicId: Int?
    
    @IBAction func upvoteAction(_ sender: Any) {
        
        if let upvoteButton = sender as? UIButton {
            if let cell = upvoteButton.superview?.superview as? HomeTopicCollectionViewCell {
                if let topicId = cell.topicId {
                    DataSingleton.shared.upvoteTopic(topicId: topicId)
                    cell.collectionView?.reloadData()
                } else {
                    print("topic id invalid")
                }
            }else{
                print("cell not a home cv cell")
            }
        }else {
            print("sender invalid button")
        }
     
    }
    
    @IBAction func downvoteAction(_ sender: Any) {
        if let upvoteButton = sender as? UIButton {
            if let cell = upvoteButton.superview?.superview as? HomeTopicCollectionViewCell {
                if let topicId = cell.topicId {
                    DataSingleton.shared.downvoteTopic(topicId: topicId)
                    cell.collectionView?.reloadData()
                } else {
                    print("topic id invalid")
                }
            }else{
                print("cell not a home cv cell")
            }
        }else {
            print("sender invalid button")
        }

    }
    
    
    
}
