//
//  ToDoApp.swift
//  Shared
//
//  Created by ypatoglu on 4.02.2022.
//

import SwiftUI

/*
 
 MVVM Architecture
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            
        }
    }
}
