//
//  List_BindingWithin.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct ToDoItem: Identifiable {
    let id = UUID()
    var task = ""
    var priority = false
    var done = false
}

struct List_BindingWithin: View {
    @State private var items = [ToDoItem(task: "Get Milk", done: false),
                                ToDoItem(task: "Wash car", done: true),
                                ToDoItem(task: "Cut grass", done: false)]
    
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("List",
                       subtitle: "Binding WIthin",
                       desc: "You can now bind list data directly controls in list rows.")
            List($items) { $item in
                HStack {
                    TextField("Task", text: $item.task)
                    Toggle("Done?", isOn: $item.done)
                        .labelsHidden()
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    List_BindingWithin()
}
