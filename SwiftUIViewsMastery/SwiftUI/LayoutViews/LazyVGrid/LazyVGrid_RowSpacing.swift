//
//  LazyVGrid_RowSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.03.2025.
//

import SwiftUI

struct LazyVGrid_RowSpacing: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyVGrid",
                       subtitle: "Row Spacing",
                       desc: "Control the spacing between items in the LazyVGrid with the spacing modifier.")
            
            Text("Spacing: 0")
            
            let gridItems = [GridItem()]
            
            LazyVGrid(columns: gridItems, spacing: 0) {
                ForEach(1..<4) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
            
            Text("Spacing: 20")
            
            LazyVGrid(columns: gridItems, spacing: 20) {
                ForEach(1..<4) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    LazyVGrid_RowSpacing()
}
