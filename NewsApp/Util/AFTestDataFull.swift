//
//  AFTestDataFull.swift
//  NewsApp
//
//  Created by EE on 26.02.2021.
//

import Foundation

struct AFTestDataFull: Decodable {
    
    let totalResults: Int?
    let articles: [AFTestData]
    
    enum CodingKeys: String, CodingKey {
        case totalResults
        case articles
    }
    
    static var placeholder: Self {
        return AFTestDataFull(totalResults: nil, articles: [AFTestData.placeholder])
    }
}
