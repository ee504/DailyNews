//
//  AFTestData.swift
//  NewsApp
//
//  Created by EE on 25.02.2021.
//

import Foundation

struct AFTestData: Decodable {
    
    var title: String?
    var author: String?
    var urlToImage: String?
    
    enum ArticleCodingKeys: String, CodingKey {
        case title
        case author
        case urlToImage
    }
    
    init(from decoder: Decoder) throws {
        print("decode")
        let container = try decoder.container(keyedBy: ArticleCodingKeys.self)
        self.title = try? container.decode(String.self, forKey: .title)
        print(self.title)
        self.author = try? container.decode(String.self, forKey: .author)
        self.urlToImage = try? container.decode(String.self, forKey: .urlToImage)
    }
    
    init(title: String?, author: String?, urlToImage: String?) {
        self.title = title
        self.author = author
        self.urlToImage = urlToImage
    }

    static var placeholder: Self {
        return AFTestData(title: nil, author: nil, urlToImage: nil)
    }
}
