//
//  ItemModel.swift
//  ToDo (iOS)
//
//  Created by ypatoglu on 4.02.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
