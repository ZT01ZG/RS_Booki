//
//  PDBook.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/3/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import Foundation

struct PDBook: Codable {
    var bookMainTitle: String
    var bookSubTitle: String
    var bookStatus: BookStatus
    var author: Author
    
    enum BookStatus: String, Codable {
        case available, wishlist, unavailable
    }
}
