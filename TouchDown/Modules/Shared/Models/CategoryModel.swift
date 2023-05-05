//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Macbook on 06/05/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let image: String
    let name: String
}
