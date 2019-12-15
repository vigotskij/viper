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

    init(output: MainInteractorOutput?) {
        self.output = output
    }
}

extension MainInteractor: MainInteractorProtocol {
    func routeToDetailView() {
        
    }
    
    func viewDidLoad() {
        
    }
    
    func fetchData() {
        
    }
    
    func pullToRefresh() {
        
    }
    
    
}
