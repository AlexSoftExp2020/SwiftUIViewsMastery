//
//  LazyHGrid_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyHGrid",
                       subtitle: "Introduction",
                       desc: """
The LazyHGrid works like an HStack with two main differences:
1. Child views can be arranged in a grid.
2. Child views are only created as needed.
""")
            
            let gridItems = [GridItem()]
            
            LazyHGrid(rows: gridItems) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
                Image(systemName: "7.circle")
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_Intro()
}
