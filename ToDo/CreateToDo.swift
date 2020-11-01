//
//  CreateToDo.swift
//  ToDo
//
//  Created by Abel Fernandez Pineiro on 01/11/2020.
//

import SwiftUI

struct CreateToDo: View {

    @State var toDoTitle = ""
    @State var important = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        List {
            Section{
                TextField("Ex. walk the dog", text: $toDoTitle)
            }
            Section {
                Toggle(isOn: $important, label: {
                    Text("Important")
                })
            }
            Section {
                HStack {
                    Spacer()
                    Button("Save") {
                        self.presentationMode
                            .wrappedValue
                            .dismiss()
                    }.disabled(toDoTitle.isEmpty)
                    Spacer()
                }

            }
        }.listStyle(GroupedListStyle())

    }
}

struct CreateToDo_Previews: PreviewProvider {
    static var previews: some View {
        CreateToDo()
    }
}
