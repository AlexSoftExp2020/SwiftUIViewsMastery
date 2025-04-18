//
//  List_ListRowInsets.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct List_ListRowInsets: View {
    @State private var newToDo = ""
    
    @State var data = [
        Todo(action: "Practice using List Row Insets", due: "Today"),
        Todo(action: "Grocery shopping", due: "Today"),
        Todo(action: "Vegetables", due: "Today", isIndented: true),
        Todo(action: "Spices", due: "Today", isIndented: true),
        Todo(action: "Cook dinner", due: "Next Week"),
        Todo(action: "Paint room", due: "Next Week")
    ]
    var body: some View {
        VStack {
            VStack {
                Text("To Do")
                    .font(.title)
                    .foregroundStyle(.black)
                HStack {
                    TextField("new todo", text: $newToDo)
                        .textFieldStyle(.roundedBorder)
                    Button {
                        data.append(Todo(action: newToDo))
                        newToDo = ""
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding()
            .background(Color.green)
            
            List {
                ForEach(self.data) { datum in
                    Text(datum.action)
                        .font(.title)
                        .padding()
                    // Inset row based on data
                        .listRowInsets(EdgeInsets(top: 0,
                                                  leading: datum.isIndented ? 60 : 20,
                                                  bottom: 0,
                                                  trailing: 0))
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    List_ListRowInsets()
}
