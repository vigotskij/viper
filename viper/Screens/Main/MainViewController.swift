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
    @IBOutlet private weak var tableView: UITableView?
    
    var viewModel: [MainCellViewModel] = [] {
        didSet {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.reloadData()
    }
}

extension MainViewController: MainCleanViewControllerProtocol {
    func updateViewModel(viewModel: [MainCellViewModel]) {
        self.viewModel = viewModel
    }
    
    func routeToDetailView() {
        
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.reuseIdentifier, for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        cell.viewModel = self.viewModel[indexPath.row]
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    
}

private extension MainViewController {
    func updateUI() {
        tableView?.reloadData()
    }
}
