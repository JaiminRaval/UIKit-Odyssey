//
//  GridVC.swift
//  UIKit-Odyssey
//
//  Created by Jaimin Raval on 11/08/24.
//

import UIKit

class GridVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
    var width: CGFloat!
    var height: CGFloat!
    
    let objects = ["Cat", "Dog", "Fish", "Turtle", "Lion", "Penguin", "Sparrow", "Rat", "Mouse", "foo", "bar"]
    
    @IBOutlet weak var gridCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // getting size of current device
        width = view.bounds.size.width
        height = view.bounds.size.height
        
        // init collectionView
        setupCollectionView()
        
    }
    
    func setupCollectionView(){
        gridCollection.register(UINib(nibName: "GridCell", bundle: nil), forCellWithReuseIdentifier: "GridCell")
        gridCollection.dataSource = self
        gridCollection.delegate = self
    }
    
    
    //MARK: - collection view methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (width / 2), height: 200)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as! GridCell
        cell.objectLabel.text = objects[indexPath.item]
        
        return cell
    }

}

//  https://stackoverflow.com/questions/41191491/using-collectionview-in-uiview-with-xib-file
