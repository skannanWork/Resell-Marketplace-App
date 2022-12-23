//
//  ResaleMarketApp.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/15/22.
//

import SwiftUI

@main
struct ResaleMarketApp: App {
    @StateObject var itemsViewModel = ItemsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itemsViewModel)
        }
    }
}
