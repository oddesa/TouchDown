//
//  HelmetModel.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 06/05/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let description: String
    let price: Int
    let color: [Double]
    
    var red: Double { return color[0] }
    var blue: Double { return color[2] }
    var green: Double { return color[1] }
    
    var formattedPrice: String { return "$\(price)"}
}
