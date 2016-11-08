//
//  ViewController.swift
//  UICollectionViewEx
//
//  Created by Divakar Y N on 03/11/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    
    var Array = [String]()
    
    var ButtonArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Array = ["Divakar","Chandra","Pandit","Darshan","Pradeep","Ananth","Adarsh","Chethan","Tapaz","Murali","Rajesh","Kiran","Mahendra","Sree","Noufal","Uday","Mithun","Rakesh"]
        ButtonArray = ["Press1","Press2","Press3","Press4","Press5","Press6","Press7","Press8","Press9","Press10","Press11","Press12","Press13","Press14","Press15","Press16","Press17","Press18"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return Array.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        var Lable = cell.viewWithTag(1) as! UILabel
        Lable.text = Array[indexPath.row]
        
        
        var Button = cell.viewWithTag(2) as! UIButton
        //this is the wrong way to set the button
        //Button.titleLabel?.text = ButtonArray[indexPath.row]
        Button.setTitle(ButtonArray[indexPath.row], forState: UIControlState.Normal)
        return cell
    }
}

