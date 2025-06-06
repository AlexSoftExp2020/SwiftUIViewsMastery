//
//  LazyVGrid_FlexWidth.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.03.2025.
//

import SwiftUI

struct LazyVGrid_FlexWidth: View {
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("LazyVGrid",
                       subtitle: "Flexible Width",
                       desc: "Give items in a column a flexible width through the GridItem.")
            
            Text("First Col Flex: 70 to 80")
            Text("Second Col Flex: 20 to infinity")
            
            let columns = [GridItem(.flexible(minimum: 70, maximum: 80)),
                           GridItem(.flexible(minimum: 20))]
            
            LazyVGrid(columns: columns) {
                ForEach(1..<7) { item in
                    Color.green.frame(height: 50)
                }
            }
            Spacer()
            Text("First Column Flex: 10 to 20")
            Text("Second Column Flex: 20 to 80")
            
            let columns2 = [GridItem(.flexible(minimum: 10, maximum: 20)),
                            GridItem(.flexible(minimum: 20, maximum: 80))]
            
            LazyVGrid(columns: columns2) {
                ForEach(1..<7) { item in
                    Color.green
                        .frame(height: 50)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    LazyVGrid_FlexWidth()
}
