//
//  LazyVGrid_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyVGrid_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyVGrid",
                       subtitle: "Introduction",
                       desc: """
The LazyVGrid works like a VStack with two main differences:
1. Child views can be arranged in a grid.
2. Child views are only created as needed.
""")
            
            let gridItems = [GridItem()]
            
            LazyVGrid(columns: gridItems) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
                Image(systemName: "7.circle")
                Image(systemName: "arrow.down.circle")
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    LazyVGrid_Intro()
}
