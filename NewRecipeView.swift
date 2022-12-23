//
//  NewRecipeView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/15/22.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddItem = false
    var body: some View {
        NavigationView {
            Button("Add item to sell manually") {
                showAddItem = true
            }
            .navigationTitle("New Items")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddItem) {
            AddItemView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
