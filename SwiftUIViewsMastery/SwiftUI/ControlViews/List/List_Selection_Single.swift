//
//  List_Selection_Single.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct List_Selection_Single: View {
    @State private var data = ["Practice Coding", "Grocery shopping", "Get tickets", "Clean house", "Do laundry", "Do laundry", "Cook dinner", "Paint room"]
    
    @State private var selection: String?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(data, id: \.self, selection: $selection) { item in
                    Text(item)
                }
                Text("To do first") +
                Text(selection ?? "")
                    .bold()
            }
            .font(.title)
            .navigationTitle("List")
        }
    }
}

#Preview {
    List_Selection_Single()
}
