//
//  LazyHGrid_RowAndColumnSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_RowAndColumnSpacing: View {
    @State private var columnSpacing: CGFloat = 10
    @State private var rowSpacing: CGFloat = 20
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyHGrid",
                       subtitle: "Spacing Example",
                       desc: "This is just to give you an idea of controlling column and row spacing.")
            
            let rows = [GridItem(.fixed(40), spacing: rowSpacing),
                        GridItem(.fixed(40), spacing: rowSpacing),
                        GridItem(.fixed(40))]
            
            LazyHGrid(rows: rows, spacing: columnSpacing) {
                ForEach(1..<11) { item in
                    Color.green
                        .frame(width: 40, height: 40)
                }
            }
            VStack {
                Slider(value: $columnSpacing,
                       in: 0...40,
                       step: 5,
                       minimumValueLabel: Text("0"),
                       maximumValueLabel: Text("40")) { Text("Minimum Spacing") }
                Text("Column Spacing: \(Int(columnSpacing))")
                    .padding(.bottom)
                
                Slider(value: $rowSpacing,
                       in: 0...40,
                       step: 5,
                       minimumValueLabel: Text("0"),
                       maximumValueLabel: Text("40")) { Text("Minimum Spacing") }
                Text("Row Spacing: \(Int(rowSpacing))")
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    LazyHGrid_RowAndColumnSpacing()
}
