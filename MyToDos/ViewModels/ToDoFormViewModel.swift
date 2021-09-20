//
//  ToDoFormViewModel.swift
//  MyToDos
//
//  Created by Yusuf Patoglu on 18.09.2021.
//

import Foundation


class ToDoFormViewModel: ObservableObject {
    @Published var name = ""
    @Published var completed = false
    var id: String? //optional for ids.
    
    var updating: Bool {
        id != nil
    }
    var isDisabled: Bool {
        name.isEmpty
    }
    init(){}
    init(_ currentToDo: ToDo) {
        self.name = currentToDo.name
        self.completed = currentToDo.completed
        id = currentToDo.id
    }
}
