//
//  ProfileViewController.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 6/1/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var currentUserLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentUserLabel.text = "User "+DataSingleton.shared.currentUserId.description
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func user1Selected(_ sender: Any) {
        DataSingleton.shared.currentUserId = 1
        currentUserLabel.text = "User "+DataSingleton.shared.currentUserId.description
    }

    @IBAction func user2Selected(_ sender: Any) {
        DataSingleton.shared.currentUserId = 2
        currentUserLabel.text = "User "+DataSingleton.shared.currentUserId.description
    }
    
    @IBAction func user3Selected(_ sender: Any) {
        DataSingleton.shared.currentUserId = 3
        currentUserLabel.text = "User "+DataSingleton.shared.currentUserId.description
    }
    
    @IBAction func user4Selected(_ sender: Any) {
        DataSingleton.shared.currentUserId = 4
        currentUserLabel.text = "User "+DataSingleton.shared.currentUserId.description
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
