//
//  ListView.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false),
        ItemModel(title: "Fourth", isCompleted: true)
        ItemModel(title: "Fifth", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) {
                ListRowView(item: $0)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
        
    }
}

