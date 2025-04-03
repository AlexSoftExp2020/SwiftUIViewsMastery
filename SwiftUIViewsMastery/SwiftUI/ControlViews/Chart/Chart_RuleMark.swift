//
//  Chart_RuleMark.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_RuleMark: View {
    @State private var plots = Schedule.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            RuleMark(
                xStart: .value("Start", plot.hourStart),
                xEnd: .value("End", plot.hourEnd),
                y: .value("Employee", plot.employee))
        }
        .padding()
        .frame(height: 300)
    }
}

#Preview {
    Chart_RuleMark()
}
