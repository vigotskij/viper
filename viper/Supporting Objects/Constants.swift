//
//  Constants.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

struct Constants {
    enum endpoints: String {
        case laptopAPI = "http://private-f0eea-mobilegllatam.apiary-mock.com/list"
        
        var endpoint: URL? {
            return URL(string: self.rawValue)
        }
    }
}
