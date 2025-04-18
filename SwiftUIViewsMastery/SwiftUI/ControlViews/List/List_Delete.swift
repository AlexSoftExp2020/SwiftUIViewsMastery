//
//  List_Delete.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct List_Delete: View {
    @State var data = ["Swipe to Delete", "Practice Coding", "Grocery shopping", "Get tickets", "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    var body: some View {
        List {
            Section {
                ForEach(data, id: \.self) { datum in
                    Text(datum).font(Font.system(size: 24)).padding()
                }
                .onDelete { offset in
                    data.remove(atOffsets: offset)
                }
            } header: {
                Text("To Do")
                    .padding()
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    List_Delete()
}
