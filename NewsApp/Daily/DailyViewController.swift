//
//  DailyViewController.swift
//  NewsApp
//
//  Created by EE on 18.02.2021.
//

import UIKit

class DailyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var dailyNewsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dailyNewsTableView.register(
            ExtentionCell.nib(), forCellReuseIdentifier: ExtentionCell.identifier)
        dailyNewsTableView.register(
            TopStoryCell.nib(), forCellReuseIdentifier: TopStoryCell.identifier)
        dailyNewsTableView.register(
            LatestNewsCell.nib(), forCellReuseIdentifier: LatestNewsCell.identifier)
        dailyNewsTableView.delegate = self
        dailyNewsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0, 2:
            return 41
        case 1:
            return 306
        default:
            return 132
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let extentionCell = dailyNewsTableView.dequeueReusableCell(withIdentifier: ExtentionCell.identifier, for: indexPath) as? ExtentionCell
            extentionCell!.configure(storyType: "Top Stories", link: "More")
            return extentionCell!
        case 1:
            let topStoryCell = dailyNewsTableView.dequeueReusableCell(withIdentifier: TopStoryCell.identifier, for: indexPath) as? TopStoryCell
            topStoryCell!.configure(preview: "TopStory", companyLogo: "BBCLogo", additionalInfo: "BBC News • 1hour ago", title: "Coronavirus: HSBC puts 35,000 job cuts on hold")
            return topStoryCell!
        case 2:
            let extentionCell = dailyNewsTableView.dequeueReusableCell(withIdentifier: ExtentionCell.identifier, for: indexPath) as? ExtentionCell
            extentionCell!.configure(storyType: "Latest News", link: "See All")
            return extentionCell!
        default:
            let latestNewsCell = dailyNewsTableView.dequeueReusableCell(withIdentifier: LatestNewsCell.identifier, for: indexPath) as? LatestNewsCell
            latestNewsCell!.configure(preview: "LatestNews", companyLogo: "BBCLogo", additionalInfo: "The New York Times • 2 hour ago", title: "Analysts Aren’t Buying the Sterling Rebound")
            return latestNewsCell!
        }
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
