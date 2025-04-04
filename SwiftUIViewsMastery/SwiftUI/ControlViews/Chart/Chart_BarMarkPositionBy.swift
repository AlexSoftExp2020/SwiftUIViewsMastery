//
//  Chart_BarMarkPositionBy.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_BarMarkPositionBy: View {
    @State private var data = GroupInfo.fetchData()
    
    var body: some View {
        Chart(data) {
            BarMark(x: .value("Category", $0.x),
                    y: .value("Quantity", $0.y),
                    width: 32
            )
            .foregroundStyle(by: .value("Group", $0.group))
            .position(by: .value("Group", $0.group))
        }
        .padding()
        .dynamicTypeSize(.xLarge)
    }
}

#Preview {
    Chart_BarMarkPositionBy()
}
