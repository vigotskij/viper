//
//  DetailDataModel.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

struct DetailDataModel {
    let title: String
    let description: String
    let imageURL: URL?
    
    init(from dataModel: LaptopDataModel) {
        self.title = dataModel.title ?? ""
        self.description = dataModel.description ?? ""
        self.imageURL = dataModel.imageURL
    }
}
