//
//  List_ListRowSeparator.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_ListRowSeparator: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("List",
                       subtitle: "Hiding ListRowSeparator",
                       desc: "Use the listRowSeparator to specify if separators are shown or mot.")
            
            List {
                Text("Row 1")
                Text("Row 2")
                    .listRowSeparator(.hidden) // top and bottom
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                Text("Row 6")
                Text("Row 7")
                    .listRowSeparator(.hidden, edges: .top)
                Text("Row 8")
                Text("Row 9")
                Text("Row 10")
            }
        }
        .font(.title)
    }
}

#Preview {
    List_ListRowSeparator()
}
