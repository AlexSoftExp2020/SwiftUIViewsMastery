//
//  Chart_RuleMark_Annotation.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_RuleMark_Annotation: View {
    @State private var plots = PlotInfo.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            LineMark(x: .value("Labels", plot.x),
                     y: .value("Values", plot.y))
            
            RuleMark(y: .value("Goal", 65))
                .foregroundStyle(Color.orange)
                .lineStyle(StrokeStyle(lineWidth: 2, dash: [8]))
                .annotation {
                    Text("Goal (b)")
                }
                .annotation(alignment: .leading) {
                    Text("Goal (a)")
                }
                .annotation(position: .bottom,
                            alignment: .trailing,
                            spacing: 8) {
                    Text("Goal (c)")
                }
        }
        .padding()
    }
}

#Preview {
    Chart_RuleMark_Annotation()
}
