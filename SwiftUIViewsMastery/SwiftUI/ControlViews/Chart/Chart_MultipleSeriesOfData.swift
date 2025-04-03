//
//  Chart_MultipleSeriesOfData.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 03.04.2025.
//

import SwiftUI
import Charts

struct Chart_MultipleSeriesOfData: View {
    @State private var performanceReport = [
        Performance(employee: "Rod", taskData: [
            PlotInfo(x: "Quarter 1", y: 75),
            PlotInfo(x: "Quarter 2", y: 25),
            PlotInfo(x: "Quarter 3", y: 100),
            PlotInfo(x: "Quarter 4", y: 50)
        ]),
        Performance(employee: "Lem", taskData: [
            PlotInfo(x: "Quarter 1", y: 50),
            PlotInfo(x: "Quarter 2", y: 75),
            PlotInfo(x: "Quarter 3", y: 65),
            PlotInfo(x: "Quarter 4", y: 70)
        ])
    ]
    var body: some View {
        Chart(performanceReport) { performances in
            ForEach(performances.taskData) { datum in
                LineMark(x: .value("", datum.x),
                         y: .value("", datum.y))
                .foregroundStyle(by: .value("", performances.employee))
            }
        }
        .padding()
        .dynamicTypeSize(.xLarge)
    }
}

#Preview {
    Chart_MultipleSeriesOfData()
}
