//
//  LazyHGrid_ColumnSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_ColumnSpacing: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyHGrid",
                       subtitle: "Column Spacing",
                       desc: "Control the spacing between items in the LazyHGrid with the spacing modifier.")
            
            Text("Spacing: 0")
            
            let gridItems = [GridItem()]
            
            LazyHGrid(rows: gridItems, spacing: 0) {
                ForEach(1..<6) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
            Text("Spacing: 20")
            
            LazyHGrid(rows: gridItems, spacing: 20) {
                ForEach(1..<6) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_ColumnSpacing()
}
