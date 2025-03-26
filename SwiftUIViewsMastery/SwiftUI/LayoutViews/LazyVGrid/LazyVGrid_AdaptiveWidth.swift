//
//  LazyVGrid_AdaptiveWidth.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.03.2025.
//

import SwiftUI

struct LazyVGrid_AdaptiveWidth: View {
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("LazyVGrid",
                       subtitle: "Adaptive Width",
                       desc: "Let items in the LazyVGrid decide how many columns they need through the GridItem. This example uses only one GridItem.")
            
            Text("Width Range: 20 to 60")
            
            let columns  = [GridItem(.adaptive(minimum: 20, maximum: 60))]
            
            LazyVGrid(columns: columns) {
                ForEach(1..<41) { item in
                    Color.green
                        .frame(height: 50)
                }
                Image(systemName: "arrow.down.circle")
            }
            .padding(.bottom)
        }
        .font(.title)
    }
}

#Preview {
    LazyVGrid_AdaptiveWidth()
}
