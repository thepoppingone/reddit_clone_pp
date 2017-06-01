//
//  HomeViewController.swift
//  reddit_clone_pp
//
//  Created by Poh Peng Wang on 5/31/17.
//  Copyright © 2017 thepoppingone. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var homeCV: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        DataSingleton.shared.createData()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        homeCV.reloadData()
        DataSingleton.shared.sortTopicArray()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataSingleton.shared.topicArray.count <= 20 ? DataSingleton.shared.topicArray.count : 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "redditTopicCellID", for: indexPath) as! HomeTopicCollectionViewCell
        
        cell.collectionView = collectionView
        cell.topicId = DataSingleton.shared.topicArray[indexPath.row].id
        cell.communityLabel.text = DataSingleton.shared.topicArray[indexPath.row].community
        cell.textLabel.text = DataSingleton.shared.topicArray[indexPath.row].text
        cell.upvotesLabel.text = DataSingleton.shared.topicArray[indexPath.row].upvotes?.description
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = UIScreen.main.bounds.width 
        return CGSize(width: cellWidth, height: 110)
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
