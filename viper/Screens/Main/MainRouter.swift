//
//  MainRouter.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

final class MainRouter: Router {
    var viewController: MainCleanViewControllerProtocol?
    
    init(viewController: MainCleanViewControllerProtocol?) {
        self.viewController = viewController
    }
}

extension MainRouter: MainRouterProtocol {
    func routeToDetailView(with model: MainCellViewModel) {
        
    }
}
