//
//  ItemsViewModel.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/17/22.
//

import Foundation

class ItemsViewModel: ObservableObject {
   @Published private (set) var itEm: [Items] = []
    
    init() {
        itEm = Items.all
    }
    
    func addItem(item: Items) {
        itEm.append(item)
    }
}
