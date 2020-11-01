//
//  ToDoApp.swift
//  ToDo
//
//  Created by Abel Fernandez Pineiro on 31/10/2020.
//

import SwiftUI

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView().environmentObject(ToDoStorage())
        }
    }
}
