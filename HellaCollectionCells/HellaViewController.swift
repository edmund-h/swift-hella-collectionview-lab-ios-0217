//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var fibby = Set<Int>()
    
    @IBOutlet weak var fibbyView: UICollectionView!
    
    override func viewDidLoad() {
    setUpFibby()
    fibbyView.delegate = self
    fibbyView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fibbyCell", for: indexPath)
        //let oldColor = cell.backgroundColor
        if fibby.contains(where: {$0 == indexPath.row} ){
            cell.backgroundColor = UIColor.purple
        } else {cell.backgroundColor = UIColor.yellow}
        return cell
    }
    
    func setUpFibby (){
        
        fibby.insert(0)
        var oldFib = 1
        fibby.insert(oldFib)
        var newFib = 1
        while oldFib < 100{
            let hipsterFib = newFib + oldFib
            print ("inserting \(hipsterFib)")
            fibby.insert (hipsterFib)
            oldFib = newFib
            newFib = hipsterFib
        }
        
    }
}

 {
    init {
        self.red
    }
}

