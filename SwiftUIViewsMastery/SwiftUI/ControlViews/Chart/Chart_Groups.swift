//
//  Chart_Groups.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_Groups: View {
    @State private var data = GroupInfo.fetchData()
    
    var body: some View {
        Chart(data) {
            LineMark(x: .value("Category", $0.x),
                     y: .value("Quantity", $0.y)
            )
            .foregroundStyle(by: .value("Group", $0.group))
        }
        .padding()
        .dynamicTypeSize(.xxLarge)
    }
}

#Preview {
    Chart_Groups()
}
