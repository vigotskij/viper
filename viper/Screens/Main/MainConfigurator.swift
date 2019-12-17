//
//  MainConfigurator.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

final class MainConfigurator: Configurator {
    func configure(viewController: CleanViewController) {
        let router = MainRouter(viewController: viewController as? MainCleanViewControllerProtocol)
        let presenter = MainPresenter(output: viewController as? MainPresenterOutput)
        let interactor = MainInteractor(output: presenter)
        
        guard let mainViewController = viewController as? MainCleanViewControllerProtocol else {
            return
        }
        mainViewController.output = interactor
        mainViewController.router = router
        
    }
    
    
}
