//
//  Chart_BarMarkStacking.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_BarMarkStacking: View {
    @State private var data = GroupInfo.fetchData()
    
    var body: some View {
        Chart(data) {
            BarMark(x: .value("Category", $0.x),
                    y: .value("Quantity", $0.y),
                    stacking: .standard // Default
            )
            .foregroundStyle(by: .value("Group", $0.group))
        }
        .padding()
        .dynamicTypeSize(.xLarge)
    }
}

#Preview {
    Chart_BarMarkStacking()
}
