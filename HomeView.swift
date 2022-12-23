//
//  HomeView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/15/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var itemsVM: ItemsViewModel

    
    var body: some View {
        NavigationView {
            ScrollView {
                ItemList(itemsForSale: itemsVM.itEm)
            }
            .navigationTitle("Resale Marketplace")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ItemsViewModel())
    }
}
