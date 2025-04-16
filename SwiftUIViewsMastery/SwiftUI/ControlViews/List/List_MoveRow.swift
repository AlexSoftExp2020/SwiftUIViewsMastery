//
//  List_MoveRow.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct List_MoveRow: View {
    @State var data = ["Hit the Edit button to reorder", "Practice Coding", "Grocery shopping", "Get tickets", "Clean house", "Do laundry", "Cook dinner", "Paint room"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { datum in
                    Text(datum).font(Font.system(size: 24)).padding()
                }
                .onMove { source, destination in
                    data.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationTitle("To Do")
            .toolbar {
                ToolbarItem { EditButton() }
            }
        }
        .tint(.green) // Changes color of buttons
    }
}

#Preview {
    List_MoveRow()
}
