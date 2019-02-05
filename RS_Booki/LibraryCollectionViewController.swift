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
    
    let rosie = Pet.init(name: "Rosie", type: .Cat)
    let nugget = Pet.init(name: "Nugget", type: .Dog)
    let euler = Pet.init(name: "Euler", type: .Dog)
    let polly = Pet.init(name: "Polly", type: .Bird)
    
    var petArray = [Pet]()
    var filteredPetArray = [Pet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petArray = [rosie, nugget, polly, euler]
//        collectionView.dataSource = dataSouce
//        collectionView.delegate = libDelegate
        collectionView.register(BookCell.self, forCellWithReuseIdentifier: cellID)
        collectionView.backgroundColor = MSXColors.overallAmbientColor
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("There are \(petArray.count) animals in this database.")
        return petArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! BookCell
        let pet = petArray[indexPath.row]
        cell.bookTitleLabel.text = pet.name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height / 3.75)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You touched me...")
        
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "MysteryViewController") as? MysteryViewController else {
            fatalError("Unable to instatiate the MysteryDetailViewContoller...")
        }
        let item = petArray[indexPath.row]
        detailVC.item = item
        print("Displaying \(item.name)...")
        navigationController?.pushViewController(detailVC, animated: true)
    }
    

}
