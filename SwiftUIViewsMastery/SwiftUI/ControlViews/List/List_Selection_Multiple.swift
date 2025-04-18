//
//  List_Selection_Multiple.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct List_Selection_Multiple: View {
    @State private var data = ["Practice Coding", "Grocery shopping", "Get tickets", "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    @State private var selections = Set<String>()
    
    var body: some View {
        NavigationStack {
            List(data, id: \.self, selection: $selections) { item in
                Text(item)
            }
            .font(.title)
            .navigationTitle("Title")
            .toolbar { EditButton() }
        }
    }
}

#Preview {
    List_Selection_Multiple()
}
