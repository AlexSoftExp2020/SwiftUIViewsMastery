//
//  LazyHGrid_AdaptiveItems.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_AdaptiveItems: View {
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("LazyHGrid",
                       subtitle: "Adaptive Height",
                       desc: "Let items in the LazyHGrid decide how many rows they need through the GridItem. This example uses only one GridItem.")
            
            Text("Height Range: 20 to 60")
            
            let rows = [GridItem(.adaptive(minimum: 20, maximum: 60))]
            
            LazyHGrid(rows: rows) {
                ForEach(1..<21) { item in
                    Color.green.frame(width: 50)
                }
                Image(systemName: "arrow.right.circle")
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_AdaptiveItems()
}
