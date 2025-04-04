//
//  Chart_PointMarkCustomizations.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_PointMarkCustomizations: View {
    @State private var plots = PlotInfo.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            PointMark(x: .value("Labels", plot.x),
                      y: .value("Values", plot.y))
            .symbol(.diamond)
            .foregroundStyle(by: .value("Values", plot.x))
            .symbolSize(by: .value("Values", plot.y))
        }
        .padding()
        .dynamicTypeSize(.xxLarge)
    }
}

#Preview {
    Chart_PointMarkCustomizations()
}
