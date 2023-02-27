//
//  File.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import Foundation



// CRUD Functions
class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second!", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false),
            ItemModel(title: "Fourth", isCompleted: true),
            ItemModel(title: "Fifth", isCompleted: true),
            ItemModel(title: "Sixth", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
    
    
}
