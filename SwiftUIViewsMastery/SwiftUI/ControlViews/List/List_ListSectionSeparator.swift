//
//  List_ListSectionSeparator.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.04.2025.
//

import SwiftUI

struct List_ListSectionSeparator: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("List",
                       subtitle: "ListSectionSeparator",
                       desc: "Use the listSectionSeparator to specify if section separators are shown or not.")
            
            List {
                Section {
                    Text("Row 1")
                    Text("Row 2")
                    Text("Row 3")
                    Text("Row 4")
                } header: {
                    Text("Section 1")
                }
                .listSectionSeparator(.hidden)
                
                Section {
                    Text("Row 5")
                    Text("Row 6")
                    Text("Row 7")
                    Text("Row 8")
                } header: {
                    Text("Section 2")
                }
            }
            .listStyle(.plain)
        }
        .font(.title)
    }
}

#Preview {
    List_ListSectionSeparator()
}
