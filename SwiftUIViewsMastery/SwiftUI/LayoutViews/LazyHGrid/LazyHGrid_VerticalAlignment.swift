//
//  LazyHGrid_VerticalAlignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_VerticalAlignment: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyHGrid",
                       subtitle: "Vertical Alignment",
                       desc: "You can control the vertical alignment of each row through the GridItems.")
            
            HStack(spacing: 20) {
                VStack(alignment: .trailing, spacing: 20.0) {
                    Text("Bottom")
                    Text("Top")
                    Text("Center")
                }
                
                let rows = [GridItem(GridItem.Size.fixed(50), alignment: .bottom),
                            GridItem(.fixed(50), alignment: .top),
                            GridItem(.fixed(50), alignment: .center)]
                
                LazyHGrid(rows: rows) {
                    ForEach(1..<11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
            }
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_VerticalAlignment()
}
