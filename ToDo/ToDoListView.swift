//
//  ContentView.swift
//  ToDo
//
//  Created by Abel Fernandez Pineiro on 31/10/2020.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach([ToDoItem(title: "Walk the dog", important: true),
                         ToDoItem(title: "Buy cheese", important: false)]) { todo in
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
                                    destination: ToDoListView(),
                                    label: {
                                        Text("Add")
                                    }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
