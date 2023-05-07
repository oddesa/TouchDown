//
//  Shop.swift
//  TouchDown
//
//  Created by Jehnsen Hirena Kane on 07/05/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct = false
    @Published var selectedProduct: Product? = nil
}
