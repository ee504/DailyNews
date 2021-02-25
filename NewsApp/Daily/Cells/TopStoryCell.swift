//
//  TopStoryCell.swift
//  NewsApp
//
//  Created by EE on 19.02.2021.
//

import UIKit

class TopStoryCell: UITableViewCell {

    @IBOutlet weak var preview: UIImageView!
    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var additionalInfo: UILabel!
    @IBOutlet weak var title: UILabel!
    static let identifier = "TopStoryCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    public func configure(preview: String, companyLogo: String, additionalInfo: String, title: String) {
        self.preview.image = UIImage(named: preview)
        self.companyLogo.image = UIImage(named: companyLogo)
        self.additionalInfo.text = additionalInfo
        self.title.text = title
    }
    func configure(news: NewsData) {
        self.preview.image = news.preview
        self.companyLogo.image = news.companyLogo
        self.additionalInfo.text = news.additionalInfo
        self.title.text = news.title
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        preview.layer.cornerRadius = 4.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
