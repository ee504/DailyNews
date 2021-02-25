//
//  DailyViewController.swift
//  NewsApp
//
//  Created by EE on 18.02.2021.
//

import UIKit

class DailyViewController: UIViewController {
    @IBOutlet weak var dailyNewsTableView: UITableView!
    private let dailyViewModel = DailyViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
//        dailyViewModel.latestNews.bind { (_) in
//            self.showTableView()
//          }
        dailyNewsTableView.register(ExtentionCell.nib(), forHeaderFooterViewReuseIdentifier: ExtentionCell.identifier)
        dailyNewsTableView.register(
            TopStoryCell.nib(), forCellReuseIdentifier: TopStoryCell.identifier)
        dailyNewsTableView.register(
            LatestNewsCell.nib(), forCellReuseIdentifier: LatestNewsCell.identifier)
        dailyNewsTableView.delegate = self
        dailyNewsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DailyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let tableSelection = DailyViewModel.DailyTableSelection(rawValue: section) {
            switch tableSelection {
            case .top: return 1
            case .latest: return dailyViewModel.latestNews?.count ?? 0
            }
        } else {
            return 0
        }
    }
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 41
//        
//    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return DailyViewModel.DailyTableSelection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(
            withIdentifier: ExtentionCell.identifier) as! ExtentionCell
        if let tableSelection = DailyViewModel.DailyTableSelection(rawValue: section) {
            switch tableSelection {
            case .top: headerView.configure(storyType: "Top Stories", link: "More")
            case .latest: headerView.configure(storyType: "Latest News", link: "See All")
            }
        }
        return headerView
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let tableSelection = DailyViewModel.DailyTableSelection(rawValue: indexPath.section) {
            switch tableSelection {
            case .top:
                let topStoryCell =
                    dailyNewsTableView.dequeueReusableCell(
                        withIdentifier: TopStoryCell.identifier,
                        for: indexPath)
                    as? TopStoryCell
                topStoryCell!.configure(news: dailyViewModel.topStory!)
                return topStoryCell!
            case .latest:
                let latestNewsCell = dailyNewsTableView.dequeueReusableCell(withIdentifier: LatestNewsCell.identifier, for: indexPath) as? LatestNewsCell
                latestNewsCell!.configure(news: dailyViewModel.latestNews![indexPath.row])
                return latestNewsCell!
            }
        }
        
        return UITableViewCell()
    }
}
