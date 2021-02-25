//
//  CellProtocol.swift
//  NewsApp
//
//  Created by EE on 25.02.2021.
//

import Foundation

protocol CellViewModel {}

protocol CellProtocol {
    func configure(vievModel: CellViewModel)
}
