//
//  LazyHGrid_RowSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_RowSpacing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyHGrid",
                       subtitle: "Row Spacing",
                       desc: "Specify the amount of spacing beneath each row by using the GridItem's spacing parameter. This can be used with any GridItem's spacing parameter. This can be used with any GridItem.Size option: fixed, flexible, or adaptive.")
            
            Text("Top Row Spacing: 40")
            
            Text("Middle Row Spacing: 20")
            
            let rows = [GridItem(spacing: 40),
                        GridItem(spacing: 20),
                        GridItem()]
            
            LazyHGrid(rows: rows) {
                ForEach(1..<11) { item in
                    Color.green
                        .frame(width: 50)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_RowSpacing()
}
