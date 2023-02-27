//
//  TodoListApp.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - managers Mdels for View
 
 
 */



@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            
        }
    }
}
