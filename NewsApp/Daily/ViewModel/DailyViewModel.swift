//
//  DailyViewModel.swift
//  NewsApp
//
//  Created by EE on 24.02.2021.
//

import Foundation

public class DailyViewModel {
    
    var topStory: NewsData?
    var latestNews: [NewsData]?
    private let repository: Repository
    
    enum DailyTableSelection: Int, CaseIterable {
        case top = 0, latest
    }
    
    init() {
        repository = Repository()
        uploadData()
    }
    
    func uploadData() {
        uploadLatestNews()
        uploadTopStory()
    }
    
    private func uploadLatestNews() {
        latestNews = repository.getLatestNews()
        
    }
    
    private func uploadTopStory() {
        topStory = repository.getTopStory()
    }
    
}
