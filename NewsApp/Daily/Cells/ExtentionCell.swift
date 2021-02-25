//
//  DailyNewsExtentionCell.swift
//  NewsApp
//
//  Created by EE on 19.02.2021.
//

import UIKit

class ExtentionCell: UITableViewHeaderFooterView {

    @IBOutlet weak var storyTypeLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    static let identifier = "ExtentionCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    public func configure(storyType: String, link: String) {
        storyTypeLabel.text = storyType
        linkLabel.text = link
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
