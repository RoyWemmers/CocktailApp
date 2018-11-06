//
//  ViewController.swift
//  CocktailApp
//
//  Created by Roy Wemmers on 04/11/2018.
//  Copyright © 2018 Roy Wemmers. All rights reserved.
//

import UIKit

class MainView : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    let Cocktails = ["test", "test_1", "test_2", "test_3", "test_4", "test_5", "test_6", "test_7", "test_8"];
    
    @IBOutlet weak var collectionView: collectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for cocktail in Cocktails {
            NSLog(cocktail)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Cocktails.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: IndexPath) as! CollectionViewCell
        
        cell.myLabel.text = Cocktails[indexPath.Cocktails]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    
}
