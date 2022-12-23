//
//  ContentView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabBar()
            //Color.green
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ItemsViewModel())
    }
}
