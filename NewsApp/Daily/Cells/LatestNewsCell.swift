//
//  LatestNewsCell.swift
//  NewsApp
//
//  Created by EE on 19.02.2021.
//

import UIKit

class LatestNewsCell: UITableViewCell, NameCellProtocol {

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
    func configure(news: NewsData) {
        self.preview.image = news.preview
        self.companyLogo.image = news.companyLogo
        self.additionalInfo.text = news.additionalInfo
        self.title.text = news.title
    }
    func configure(news: AFTestData) {
        print(news)
        if let imageUrl = news.urlToImage {
            self.preview.downloaded(from: imageUrl)
        } else {
            self.preview.image = UIImage(named: "LatestNews")!
        }
        self.companyLogo.image = UIImage(named: "BBCLogo")!
        self.additionalInfo.text = news.author
        self.title.text = news.title
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

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
