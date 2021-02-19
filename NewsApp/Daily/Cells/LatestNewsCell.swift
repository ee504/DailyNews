//
//  LatestNewsCell.swift
//  NewsApp
//
//  Created by EE on 19.02.2021.
//

import UIKit

class LatestNewsCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var preview: UIImageView!
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var additionalInfo: UILabel!
    static let identifier = "LatestNewsCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    public func configure(preview: String, companyLogo: String, additionalInfo: String, title: String) {
        self.preview.image = UIImage(named: preview)
        self.companyLogo.image = UIImage(named: companyLogo)
        self.additionalInfo.text = additionalInfo
        self.title.text = title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
