//
//  List_ListRowBackground.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct Todo: Identifiable {
    let id = UUID()
    var action = ""
    var due = ""
    var isIndented = false
}

struct List_ListRowBackground: View {
    @State private var newToDo = ""
    
    @State var data = [
        Todo(action: "Practice Coding", due: "Today"),
        Todo(action: "Grocery shopping", due: "Today"),
        Todo(action: "Get tickets", due: "Tomorrow"),
        Todo(action: "Clean house", due: "Next Week"),
        Todo(action: "Do laundry", due: "Next Week"),
        Todo(action: "Cook dinner", due: "Next Week"),
        Todo(action: "Paint room", due: "Next Week")
    ]
    
    var body: some View {
        List {
            Section {
                ForEach(data) { datum in
                    Text(datum.action)
                        .font(Font.system(size: 24))
                        .foregroundStyle(self.getTextColor(due: datum.due))
                    // Turn row green if due today
                        .listRowBackground(datum.due == "Today" ? Color.green : Color.clear)
                        .padding()
                }
            } header: {
                VStack {
                    Text("To Do").font(.title)
                    HStack {
                        TextField("new todo", text: $newToDo)
                            .textFieldStyle(.roundedBorder)
                        Button {
                            data.append(Todo(action: newToDo))
                            newToDo = ""
                        } label: {
                            Image(systemName: "plus.circle.fill").font(.title)
                        }
                    }
                }
                .padding()
            }
        }
        .listStyle(.plain)
    }
    
    // This logic was inline but the compiler said it was "too complex" :)
    private func getTextColor(due: String) -> Color {
        due == "Today" ? Color.black : Color.primary
    }
}

#Preview {
    List_ListRowBackground()
}
