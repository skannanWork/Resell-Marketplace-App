//
//  CategoryView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/17/22.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var itemsVM: ItemsViewModel
    
    var category:  Category
    
    var itemLists: [Items] {
        return itemsVM.itEm.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            //$0 acts as a wildcard meaning we dont have to name the item variable in the closure. Wildcard
            //allows for shorter coding
            ItemList(itemsForSale: itemLists)
        }
        .navigationTitle(category.rawValue)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.clothes)
            .environmentObject(ItemsViewModel())
    }
}
