//
//  NewTopicViewController.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 6/1/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import UIKit

class NewTopicViewController: UIViewController {

    @IBOutlet weak var newTopicNameTextField: UITextField!
    @IBOutlet weak var notificationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        notificationLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newTopicAddButtonTapped(_ sender: Any) {
        let newTopicText = newTopicNameTextField.text
        let newTopic = Topic(id: DataSingleton.shared.topicArray.count, text: newTopicText!, community: "Random - Default", upvotes: 0, authorId: DataSingleton.shared.currentUserId)
        DataSingleton.shared.topicArray.append(newTopic)
        newTopicNameTextField.text = ""
        notificationLabel.text = "Topic Added!"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
