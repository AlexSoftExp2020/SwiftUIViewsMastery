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
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    List_BindingWithin()
}
