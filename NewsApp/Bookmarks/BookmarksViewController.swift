//
//  BookmarksViewController.swift
//  NewsApp
//
//  Created by EE on 18.02.2021.
//

import UIKit

class BookmarksViewController: UIViewController {

    @IBOutlet weak var bookmarksTableView: UITableView!
    let REUSE = "BookmarksCustomCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

extension BookmarksViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: REUSE)
            if cell == nil {
                cell = BookmarksCustomCell.createCell()
            }
            return cell!
        }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: REUSE_ID, for: indexPath) as! BookmarksCustomCell
//        return cell
//    }
}
