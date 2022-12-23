//
//  AddItemView.swift
//  ResaleMarket
//
//  Created by Shyam Kannan on 7/16/22.
//

import SwiftUI

struct AddItemView: View {
    
    @EnvironmentObject var itemsVM: ItemsViewModel
    
    @State private var name: String = ""
    @State private var selectCategory: Category = Category.clothes
    @State private var writeDescription: String = ""
    @State private var writePickUpInstruct: String = ""
    @State private var navigateToItem = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Item name", text: $name)
                }
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text: $writeDescription)
                }
                Section(header: Text("Pick Up Instructions")) {
                    TextEditor(text: $writePickUpInstruct)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem {
                    NavigationLink(isActive: $navigateToItem) {
                        ItemDescriptionView(iteM: itemsVM.itEm.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveItem()
                            navigateToItem  = true
                        } label: {
                            Label("Confirm", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                    .disabled(writeDescription.isEmpty)
                    .disabled(writePickUpInstruct.isEmpty)
                }
                
            })
            .navigationTitle("New Item")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}

extension AddItemView {
    private func saveItem() {
        let now  = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        
        let item = Items(name:name, image: "", description: writeDescription, pickupInstruct: writePickUpInstruct, category: selectCategory.rawValue, datePublished: datePublished, url: "")
        itemsVM.addItem(item: item)
    }
}
