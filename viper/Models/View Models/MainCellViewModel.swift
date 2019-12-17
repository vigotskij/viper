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
    struct ViewModel {
    let title: String
    let description: String
    let imageURL: URL?
    
    var image: UIImage? {
        guard let url = imageURL,
            let data = try? Data(contentsOf: url),
            let image = UIImage(data: data),
            let compressedImageData = UIImageJPEGRepresentation(image, 0) else {
            return nil
        }
        return UIImage(data: compressedImageData)
    }
    init(from dataModel: LaptopDataModel) {
        self.title = dataModel.title ?? ""
        self.description = dataModel.description ?? ""
        self.imageURL = dataModel.imageURL
    }
}
    struct response {
        
    }
}
