//
//  LazyVGrid_HorizontalAlignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.03.2025.
//

import SwiftUI

struct LazyVGrid_HorizontalAlignment: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyVGrid",
                       subtitle: "Horizontal Alignment",
                       desc: "You can control the horizontal alignment of each column through the GridItems.")
            
            HStack(spacing: 20) {
                Text("Leading")
                Text("Trailing")
                Text("Center")
            }
            
            let cols = [GridItem(GridItem.Size.fixed(100), alignment: .leading),
                        GridItem(.fixed(100), alignment: .trailing),
                        GridItem(.fixed(100), alignment: .trailing)]
            
            LazyVGrid(columns: cols) {
                ForEach(1..<13) { item in
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
    LazyVGrid_HorizontalAlignment()
}
