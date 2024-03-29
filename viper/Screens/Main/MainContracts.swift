//
//  MainContracts.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation
protocol MainRouterProtocol: Router {
    var viewController: MainCleanViewControllerProtocol? { get set }
    func routeToDetailView(with model: MainCellViewModel)
}

protocol MainInteractorProtocol: Interactor {
    var output: MainInteractorOutput? { get set }
    func viewDidLoad()
    func fetchData()
    func pullToRefresh()
    func routeToDetailView(with model: MainCellViewModel)
}

protocol MainPresenterProtocol: Presenter {
    var output: MainPresenterOutput? { get set }
    func presentData(response: [MainCellViewModel])
    func routeToDetailView(with model: MainCellViewModel)
}
protocol MainCleanViewControllerProtocol: CleanViewController {
    var configurator: MainConfigurator? { get set }
    var output: MainInteractorProtocol? { get set }
    var router: MainRouterProtocol? { get set }
    func updateViewModel(viewModel: [MainCellViewModel])
    func routeToDetailView(with model: MainCellViewModel)
}

// MARK: ~ Outputs
protocol MainViewControllerOutput: MainInteractorProtocol {}
protocol MainInteractorOutput: MainPresenterProtocol {}
protocol MainPresenterOutput: MainCleanViewControllerProtocol {}
