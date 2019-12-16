//
//  MainPresenter.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation

final class MainPresenter: Presenter, InteractorOutput {
    var output: MainPresenterOutput?
    
    init(output: MainPresenterOutput?) {
        self.output = output
    }
}

extension MainPresenter: MainPresenterProtocol {
    func presentData(response: [MainCellViewModel]) {
        output?.updateViewModel(viewModel: response)
    }
    
    func routeToDetailView() {
        
    }
}
