//
//  MainTableViewCell.swift
//  viper
//
//  Created by Boris Sortino on 15/12/2019.
//  Copyright © 2019 Boris Sortino. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var thumbnailImage: UIImageView!
    
    var viewModel: MainCellViewModel? {
        didSet {
            titleLabel.text = self.viewModel?.title
            descriptionLabel.text = self.viewModel?.description
            thumbnailImage.image = self.viewModel?.image
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        titleLabel.text = nil
//        descriptionLabel.text = nil
//        thumbnailImage.image = nil
//    }
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
