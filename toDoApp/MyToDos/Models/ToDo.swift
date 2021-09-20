//
//  ToDo.swift
//  MyToDos
//
//  Created by Yusuf Patoglu on 17.09.2021.
//

import Foundation

struct ToDo: Identifiable, Codable
{
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false
    
    static var sampleData: [ToDo]
    {
        [
            ToDo(name: "Task #1", completed: true),
            ToDo(name: "Task #2")
        ]
    }
   
}
