//
//  ContentView.swift
//  ToDo
//
//  Created by Abel Fernandez Pineiro on 31/10/2020.
//

import SwiftUI

struct ToDoListView: View {

    @EnvironmentObject var toDoStorage: ToDoStorage

    var body: some View {
        NavigationView {
            List {
                ForEach(self.toDoStorage.toDoList) { todo in
                    if todo.important {
                        Text(todo.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Rectangle()
                                            .foregroundColor(.red)
                                            .cornerRadius(5))


                    } else {
                        Text(todo.title)
                    }
                }
            }.navigationTitle("To Dos")
            .navigationBarItems(trailing: NavigationLink(
                                    destination: CreateToDo(),
                                    label: {
                                        Text("Add")
                                    }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
            .environmentObject(ToDoStorage())
    }
}
