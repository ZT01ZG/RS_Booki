//
//  LibraryCollectionViewController.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/3/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import UIKit

class LibraryCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
//    let dataSouce = LibraryDataSource()
//    let libDelegate = LibraryDelegate()
    
    let cellID: String = "cellID"
    
    var userBooks = [PDBook]()
    var userBooksFiltered = [PDBook]()
    
    var petArray = [Pet]()
    var filteredPetArray = [Pet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.dataSource = dataSouce
//        collectionView.delegate = libDelegate
        collectionView.register(BookCell.self, forCellWithReuseIdentifier: cellID)
        collectionView.backgroundColor = MSXColors.overallAmbientColor
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 23
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! BookCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height / 3.75)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You touched me...")
    }
    

}
