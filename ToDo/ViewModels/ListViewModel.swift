//
//  ListViewModel.swift
//  ToDo
//
//  Created by Yusuf Patoglu on 5.02.2022.
//

import Foundation

/*
 CRUD FUNCTIONS
 
 Create, Read, Update, Delete
 
 
 */

class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = [] {
        didSet {  // Anytime we change items array, this function will get called.
            self.saveItems()
        }
    }
    let itemsKey: String = "items_list"
    
    init() {
        self.getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "First item!", isCompleted: false),
//            ItemModel(title: "Second item!", isCompleted: true),
//            ItemModel(title: "Third item!", isCompleted: false)
//        ]
//        items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
    
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(theTitle: String) {
        let newItem = ItemModel(title: theTitle, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
//        if let index = items.firstIndex { (existingItem) -> Bool in
//            return existingItem.id == item.id
//        } {
//
//        }
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
