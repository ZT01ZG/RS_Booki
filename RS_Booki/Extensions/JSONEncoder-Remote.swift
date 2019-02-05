//
//  JSONEncoder-Remote.swift
//  RS_Booki
//
//  Created by Zachary Hagman on 2/4/19.
//  Copyright © 2019 Rogue Spork, LLC. All rights reserved.
//

import Foundation

extension JSONEncoder {
    func encode<T: Encodable>(_ Type: T.Type, toURL url: String, completion: (() -> Void)?) {
        guard let url = URL(string: url) else {
            fatalError("URL passed is not valid...")
        }
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
