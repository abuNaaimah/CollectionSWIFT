//
//  ViewController.swift
//  CollectionSWIFT
//
//  Created by Tops on 18/10/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    
    var cellarr=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        cellarr=["01.png","02.png","03.png","04.png","05.png"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return cellarr.count
    }
    
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        var cell=CollectionViewCell()
        cell=collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.img_cell.image=UIImage(named: cellarr[indexPath.row])
        return cell
    }


}

