//
//  List_SelectionDisabled.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct List_SelectionDisabled: View {
    @State private var data = ["Things to do", "Practice Coding",
                               "Grocery shopping", "Get tickets",
                               "Clean house", "Do laundry",
                               "Cook dinner", "Paint room"]
    @State private var selection: String?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                List(data, id: \.self, selection: $selection) { item in
                    Text(item)
                        .selectionDisabled(item == "Things to do")
                }
            }
            .font(.title)
            .navigationTitle("List")
        }
    }
}

#Preview {
    List_SelectionDisabled()
}
