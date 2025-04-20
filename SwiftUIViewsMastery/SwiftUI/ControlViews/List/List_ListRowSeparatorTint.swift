//
//  List_ListRowSeparatorTint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.04.2025.
//

import SwiftUI

struct List_ListRowSeparatorTint: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("List",
                       subtitle: "ListRowSeparatorTint",
                       desc: "Use the listRowSeparatorTint to modify the color of the separator.")
            
            List {
                Text("Row 1")
                Text("Yellow")
                    .listRowSeparatorTint(.yellow) // top and bottom
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                Text("Row 6")
                Text("Green on top")
                    .listRowSeparatorTint(.green, edges: .top)
                Text("Row 8")
                Text("Row 9")
                Text("Row 10")
            }
        }
        .font(.title)
    }
}

#Preview {
    List_ListRowSeparatorTint()
}
