//
//  Chart_CustomLegend.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI
import Charts

struct Chart_CustomLegend: View {
    @State private var data = GroupInfo.fetchData()
    
    var body: some View {
        Chart(data) {
            LineMark(x: .value("Category", $0.x),
                     y: .value("Quantity", $0.y)
            )
            .foregroundStyle(by: .value("Group", $0.group))
        }
        .chartForegroundStyleScale([
            "Rod": .purple,
            "Lem": .orange,
            "Mark": .red /* No data but in Legend */
        ])
        .padding()
        .dynamicTypeSize(.xLarge)
    }
}

#Preview {
    Chart_CustomLegend()
}
