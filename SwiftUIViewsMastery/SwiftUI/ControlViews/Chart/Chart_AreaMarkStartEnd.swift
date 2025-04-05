//
//  Chart_AreaMarkStartEnd.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI
import Charts

struct Chart_AreaMarkStartEnd: View {
    @State private var plots = Schedule.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            AreaMark(x: .value("Employee", plot.employee),
                     yStart: .value("Start", plot.hourStart),
                     yEnd: .value("End", plot.hourEnd))
            .foregroundStyle(.blue.gradient)
            .interpolationMethod(.cardinal)
        }
        .padding()
        .frame(height: 300)
    }
}

#Preview {
    Chart_AreaMarkStartEnd()
}
