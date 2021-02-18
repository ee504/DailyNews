//
//  BookmarksCustomCell.swift
//  NewsApp
//
//  Created by EE on 18.02.2021.
//

import Foundation

import UIKit
 
class BookmarksCustomCell:UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func createCell() -> BookmarksCustomCell? {
        let nib = UINib(nibName: "BookmarksCustomCell", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? BookmarksCustomCell
        return cell
    }
}
