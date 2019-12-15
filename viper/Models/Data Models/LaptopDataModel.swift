//
//  LaptopDataModel.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

struct LaptopDataModel: Codable {
    let title: String?
    let description: String?
    let imageURLString: String?
    
    var imageURL: URL? {
        guard let unwrappedURLString = imageURLString else {
            return nil
        }
        return URL(string: unwrappedURLString)
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case description
        case imageURLString = "image"
    }
}
