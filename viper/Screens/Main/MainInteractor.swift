//
//  MainInteractor.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

final class MainInteractor: Interactor, CleanViewControllerOutput {
    var output: MainInteractorOutput?
    
    var laptops: [LaptopDataModel] = []
    init(output: MainInteractorOutput?) {
        self.output = output
    }
}

extension MainInteractor: MainInteractorProtocol {
    func routeToDetailView(with model: MainCellViewModel) {
        
    }
    
    func viewDidLoad() {
        fetchData()
    }
    
    func fetchData() {
        guard let unwrappedURL = Constants.endpoints.laptopAPI.endpoint else {
            return
        }
        URLSession.shared.retrieveData(with: unwrappedURL) { [weak self] (response: [LaptopDataModel]?, error) in
            guard let unwrappedResponse = response,
                let self = self else {
                return
            }
            self.laptops.append(contentsOf: unwrappedResponse)
            self.sendToOutput(response: unwrappedResponse)
        }
    }
    
    func pullToRefresh() {
        
    }
}

private extension MainInteractor {
    func sendToOutput(response: [LaptopDataModel]) {
        let transformedResponse = response.map { MainCellViewModel(from: $0) }
        output?.presentData(response: transformedResponse)
    }
}
