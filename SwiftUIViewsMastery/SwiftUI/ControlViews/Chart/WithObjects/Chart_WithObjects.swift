//
//  Chart_WithObjects.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_WithObjects: View {
    @State private var plots = PlotInfo.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            BarMark(x: .value("Labels", plot.x),
                    y: .value("Values", plot.y))
        }
    }
}

#Preview {
    Chart_WithObjects()
}
