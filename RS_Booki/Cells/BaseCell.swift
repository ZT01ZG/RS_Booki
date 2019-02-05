//
//  BaseCell.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/3/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        backgroundColor = UIColor.orange
        clipsToBounds = true
        layer.cornerRadius = self.frame.width / 16
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
