//
//  ViewController.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
    var configurator: MainConfigurator? {
        didSet {
            configurator?.configure(viewController: self)
        }
    }
    var output: MainInteractorProtocol?
    var router: MainRouterProtocol?
    
    @IBOutlet private weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension MainViewController: MainCleanViewControllerProtocol {
    func routeToDetailView() {
        
    }
}
