//
//  List_ListSectionSeparatorTint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.04.2025.
//

import SwiftUI

struct List_ListSectionSeparatorTint: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("List",
                       subtitle: "ListSectionSeparatorTint",
                       desc: "Use the listSectionSeparatorTint to modify the color of the separator.")
            
            List {
                Section {
                    Text("Row 1")
                    Text("Row 2")
                    Text("Row 3")
                    Text("Row 4")
                } header: {
                    Text("Section 1")
                }
                .listSectionSeparatorTint(.red)
                
                Section {
                    Text("Row 1")
                    Text("Row 2")
                    Text("Row 3")
                    Text("Row 4")
                } header: {
                    Text("Section 2")
                }
                .listSectionSeparatorTint(.green, edges: .bottom)
                #warning("Top not working yet.")
            }
            .listStyle(.plain) // Bottom only
        }
        .font(.title)
    }
}

#Preview {
    List_ListSectionSeparatorTint()
}
