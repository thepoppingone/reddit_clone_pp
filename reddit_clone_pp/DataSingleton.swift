//
//  dataSingleton.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import Foundation

final class DataSingleton {
    
    // Can't init is singleton
    private init() { }
    
    // MARK: Shared Instance
    static let shared = DataSingleton()
    
    // MARK: Local Variable
    var topicArray: [Topic] = []
    var userArray: [User] = []
    var currentUserId: Int = 1
    // MARK: Data Creation Methods
    
    func createData(){
        let topic1 = Topic(id: 1, text: "Gong Cha goes Gone Cha in June!", community: "Singapore", upvotes: 2, authorId: 1)
        let topic2 = Topic(id: 2, text: "Jack Neo movie made infamous again...", community: "Singapore", upvotes: 3, authorId: 1)
        let topic3 = Topic(id: 3, text: "Singapore made famous in Criminal Minds" , community: "Singapore", upvotes: 0, authorId: 1)
        let topic4 = Topic(id: 4, text: "China Town is famous for scams?", community: "Singapore", upvotes: 2, authorId: 1)
        let topic5 = Topic(id: 5, text: "MRT Downtown line opens in October!", community: "Singapore", upvotes: 3, authorId: 1)
        let topic6 = Topic(id: 6, text: "Graduation = Umemployment?" , community: "Global", upvotes: 0, authorId: 1)
        let topic7 = Topic(id: 7, text: "Topic 7 Text" , community: "Global", upvotes: 0, authorId: 1)
        let topic8 = Topic(id: 8, text: "Bangkok is full of traffic jams!" , community: "Thailand", upvotes: 0, authorId: 1)
        let topic9 = Topic(id: 9, text: "Donald trump exits Paris Agreement!" , community: "Global", upvotes: 0, authorId: 1)
        let topic10 = Topic(id: 10, text: "Johor currency drops!" , community: "Malaysia", upvotes: 10, authorId: 1)
        let topic11 = Topic(id: 11, text: "Arts students finding non arts jobs?" , community: "Singapore", upvotes: 0, authorId: 1)
        let topic12 = Topic(id: 12, text: "Hong Kong's freedom questioned?" , community: "Hong Kong", upvotes: 0, authorId: 1)
        let topic13 = Topic(id: 13, text: "China's air getting worse!" , community: "Global", upvotes: 5, authorId: 1)
        let topic14 = Topic(id: 14, text: "Where is the best bak chor mee in Singapore?" , community: "Singapore", upvotes: 0, authorId: 1)
        let topic15 = Topic(id: 15, text: "Work-life balance, important?" , community: "Global", upvotes: 0, authorId: 1)
        let topic16 = Topic(id: 16, text: "Culture clashing with Asians and the Western Values!" , community: "Global", upvotes: 0, authorId: 1)
        let topic17 = Topic(id: 17, text: "Topic 17 is interesting!" , community: "Testing", upvotes: 0, authorId: 1)
        let topic18 = Topic(id: 18, text: "We are serious about developing an AI baby!" , community: "Global", upvotes: 0, authorId: 1)
        let topic19 = Topic(id: 19, text: "Life is as such, whats next after school?" , community: "Global", upvotes: 0, authorId: 1)
        let topic20 = Topic(id: 20, text: "Asia the next land of gold?" , community: "Global", upvotes: 0, authorId: 1)
        topicArray.append(topic1)
        topicArray.append(topic2)
        topicArray.append(topic3)
        topicArray.append(topic4)
        topicArray.append(topic5)
        topicArray.append(topic6)
        topicArray.append(topic7)
        topicArray.append(topic8)
        topicArray.append(topic9)
        topicArray.append(topic10)
        topicArray.append(topic11)
        topicArray.append(topic12)
        topicArray.append(topic13)
        topicArray.append(topic14)
        topicArray.append(topic15)
        topicArray.append(topic16)
        topicArray.append(topic17)
        topicArray.append(topic18)
        topicArray.append(topic19)
        topicArray.append(topic20)
        
        let user1 = User(id: 1, name: "Poh Peng", karma: 20)
        let user2 = User(id: 2, name: "Ronald", karma: 10)
        userArray.append(user1)
        userArray.append(user2)
        sortTopicArray()
    }
    
    func upvoteTopic(topicId :Int){
        // Check for empty optionals
        if let topic = topicArray.filter({$0.id == topicId}).first {
            if let _ = topic.upvotes {
              topic.upvotes! += 1
              sortTopicArray()
            }
        } else {
            // Topic not found
        }
    }
    
    func downvoteTopic(topicId :Int){
        // Check for empty optionals
        if let topic = topicArray.filter({$0.id == topicId}).first {
            if let _ = topic.upvotes {
                topic.upvotes! -= 1
                sortTopicArray()
            }
        } else {
            // Topic not found
        }
    }
    
    func sortTopicArray(){
        topicArray = topicArray.sorted(by: { (first:Topic, second:Topic) -> Bool in
            if let _ = first.upvotes, let _ = second.upvotes {
                return first.upvotes! > second.upvotes!
            }
            return false
        })
    }
        
}
    

