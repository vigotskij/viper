//
//  MainCellViewModel.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation
import UIKit

struct MainCellViewModel {
    let title: String
    let description: String
    let imageURL: URL?
    let compressedImage: UIImage?
    var image: UIImage? {
        guard let url = imageURL,
            let data = try? Data(contentsOf: url),
            let image = UIImage(data: data) else {
                return nil
        }
        return image
    }
    init(from dataModel: LaptopDataModel) {
        self.title = dataModel.title ?? ""
        self.description = dataModel.description ?? ""
        self.imageURL = dataModel.imageURL
        guard let url = imageURL,
            let data = try? Data(contentsOf: url),
            let image = UIImage(data: data),
            let compressedImageData = UIImageJPEGRepresentation(image, 0) else {
                compressedImage = nil
                return
        }
        compressedImage = UIImage(data: compressedImageData)
    }
}
