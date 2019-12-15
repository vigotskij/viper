//
//  Protocols.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import Foundation
import UIKit

// MARK: ~ Base Protocols
protocol Interactor {}
protocol Presenter {}
protocol Router {}
protocol CleanViewController: UIViewController {}
protocol Configurator {
    func configure(viewController: CleanViewController)
}

// MARK: ~ Outputs for increased readability
protocol InteractorOutput: Presenter {}
protocol PresenterOutput: CleanViewController {}
protocol CleanViewControllerOutput: Interactor {}
