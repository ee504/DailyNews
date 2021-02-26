//
//  DailyViewModel.swift
//  NewsApp
//
//  Created by EE on 24.02.2021.
//

import Foundation
import Combine

public class DailyViewModel {
    
    var topStory: NewsData?
    var latestNews: [NewsData]?
    @Published var latestNewsAF = AFTestDataFull.placeholder {
        willSet(newValue) {
            print("willSet")
            print("old value \(latestNewsAF.articles.count)")
            print("new value \(newValue.articles.count)")
        }
        didSet(oldValue) {
            print("didSet")
            print("old value \(oldValue.articles.count)")
            print("new value \(latestNewsAF.articles.count)")
        }
    }
    private let repository: Repository
    private var cancelable = Set<AnyCancellable>()
    
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
        uploadLatestNewsAlam()
    }
    
    private func uploadLatestNews() {
        latestNews = repository.getLatestNews()
    }
    
    private func uploadLatestNewsAlam() {
        NewsHandler.init().getLatestAppleNews(6)
            .assign(to: \.latestNewsAF, on: self)
            .store(in: &cancelable)
    }
    
    private func uploadTopStory() {
        topStory = repository.getTopStory()
    }
    
}
