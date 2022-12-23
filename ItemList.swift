//
//  ItemList.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/16/22.
//

import SwiftUI

struct ItemList: View {
    var itemsForSale: [Items]
    var body: some View {
        VStack {
            HStack{
            //first variable  is items count. This checks for whether the sellingItems count
            //is greater than 1 and if it is return all items,  else just 1
                Text("\(itemsForSale.count) \(itemsForSale.count > 1 ? "Items for sale" : "Item for sale")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
            
                    Spacer()
            }
            //grid that grows vertically according to number of items
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing:15)], spacing: 15) {
                //look through the items and return  each item card
                ForEach(itemsForSale) { item in
                    NavigationLink(destination: ItemDescriptionView(iteM: item)) {
                        ItemCard(item: item)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
        
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ItemList(itemsForSale: Items.all)
        }
    }
}
