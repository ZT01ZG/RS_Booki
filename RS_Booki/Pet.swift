//
//  Pet.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/4/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import Foundation

struct Pet: Codable {
    var name: String
    var type: AnimalType
    
    enum AnimalType: String, Codable {
        case Dog, Cat, Bird, Snake
    }
}
