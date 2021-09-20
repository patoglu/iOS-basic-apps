//
//  MyToDosApp.swift
//  MyToDos
//
//  Created by Yusuf Patoglu on 17.09.2021.
//

import SwiftUI

@main
struct MyToDosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
