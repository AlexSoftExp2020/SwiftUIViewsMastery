//
//  Chart_BarMarkStartEnd.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_BarMarkStartEnd: View {
    @State private var plots = Schedule.fetchData()
    
    var body: some View {
        VStack(spacing: 50.0) {
            Chart(plots) { plot in
                BarMark(xStart: .value("Start", plot.hourStart),
                        xEnd: .value("End", plot.hourEnd),
                        y: .value("Employee", plot.employee))
            }
            .chartXAxisLabel("Hours")
            .chartXScale(domain: 5...18)
            
            Chart(plots) { plot in
                BarMark(x: .value("Employee", plot.employee),
                        yStart: .value("Start", plot.hourStart),
                        yEnd: .value("End", plot.hourEnd))
            }
            .chartXAxisLabel("Employees")
        }
        .padding()
    }
}

#Preview {
    Chart_BarMarkStartEnd()
}
