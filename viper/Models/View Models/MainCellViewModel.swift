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
    
    var image: UIImage? {
        guard let url = imageURL,
            let data = try? Data(contentsOf: url) else {
            return nil
        }
        return UIImage(data: data)
    }
}
