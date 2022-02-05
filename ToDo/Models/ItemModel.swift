//
//  ItemModel.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//
import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: self.id,  title: self.title, isCompleted: !isCompleted)
    }
}
