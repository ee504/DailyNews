//
//  Repository.swift
//  NewsApp
//
//  Created by EE on 25.02.2021.
//

import Foundation
import UIKit.UIImage

class Repository {
    
    private let topStory = NewsData(preview: UIImage(named: "TopStory")!, companyLogo: UIImage(named: "BBCLogo")!,
                                    title: "Coronavirus: HSBC puts 35,000 job cuts on hold",
                                    additionalInfo: "BBC News • 1hour ago")
    
    private let latestNews = [NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                       title: "First story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound"),
                               NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                        title: "Second story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound"),
                               NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                        title: "Third story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound"),
                               NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                        title: "Fourth story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound"),
                               NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                        title: "Fifth story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound"),
                               NewsData(preview: UIImage(named: "LatestNews")!, companyLogo: UIImage(named: "BBCLogo")!,
                                        title: "Sixth story", additionalInfo: "Analysts Aren’t Buying the Sterling Rebound")]
    
    init() {
        
    }
    
    func getTopStory() -> NewsData {
        return topStory
    }
    
    func getLatestNews() -> [NewsData] {
        return latestNews
    }
}
