//
//  BookCell.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/3/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import UIKit

class BookCell: BaseCell {
    
    let bookTitleLabel: SPXLabel = {
        let lbl = SPXLabel(title: "bookTitle", color: .clear, colorOfLabelText: MSXColors.darkerAmbientColor)
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    override func setupViews() {
        super.setupViews()
        addSubview(bookTitleLabel)
        bookTitleLabel.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 2, left: 2, bottom: 2, right: 2))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
