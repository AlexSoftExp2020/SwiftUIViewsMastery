//
//  Chart_MultipleMarks.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_MultipleMarks: View {
    @State private var plots = PlotInfo.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            LineMark(x: .value("Labels", plot.x),
                     y: .value("Values", plot.y))
            .foregroundStyle(Color.red)
            
            AreaMark(x: .value("Labels", plot.x),
                     y: .value("Values", plot.y))
            .foregroundStyle(Color.orange.gradient.opacity(0.6))
            
            PointMark(x: .value("Labels", plot.x),
                      y: .value("Values", plot.y))
            
        }
    }
}

#Preview {
    Chart_MultipleMarks()
}
