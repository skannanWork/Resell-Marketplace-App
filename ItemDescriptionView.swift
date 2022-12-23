//
//  ItemDescriptionView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/16/22.
//

import SwiftUI

struct ItemDescriptionView: View {
    var iteM: Items
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: iteM.image)) { image in
                image
                    .resizable()
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            VStack(spacing:30) {
                Text(iteM.name)
                    .font(.largeTitle)
                    .bold()
                    //if text is long  enough to go to multiple lines this allows it
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 30) {
                    Text(iteM.description)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("How to Receive your product")
                            .font(.headline)
                        Text(iteM.pickupInstruct)
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        //since theres white space at top of image this is to negate that
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ItemDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescriptionView(iteM: Items.all[0])
    }
}
