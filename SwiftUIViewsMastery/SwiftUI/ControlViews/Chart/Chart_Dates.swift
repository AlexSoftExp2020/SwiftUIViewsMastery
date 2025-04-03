//
//  Chart_Dates.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 03.04.2025.
//

import SwiftUI
import Charts

struct Chart_Dates: View {
    @State private var plots = DailyInfo.fetchData()
    
    var body: some View {
        Chart(plots) { plot in
            BarMark(x: .value("Labels", plot.x, unit: .month),
                    y: .value("Values", plot.y))
        }
        .padding()
    }
}

#Preview {
    Chart_Dates()
}
