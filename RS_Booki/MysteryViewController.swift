//
//  MysteryViewController.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/3/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import UIKit

class MysteryViewController: UIViewController {
    
    var item: Pet!
    
    let animalName: SPXLabel = {
        let lbl = SPXLabel(title: "#ANIMAL#", color: .clear, colorOfLabelText: .black)
        lbl.font = UIFont.myBoldFont(ofSize: 40)
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(animalName)
        animalName.centerInSuperview()
        animalName.text = item.name
    }
}
