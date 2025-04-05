//
//  Chart_SectorMark_Donut.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI
import Charts

struct Chart_SectorMark_Donut: View {
    let ownership = Share.fetchData()
    
    var body: some View {
        VStack {
            Chart(ownership) { owner in
                SectorMark(angle: .value("Share", owner.value),
                           innerRadius: MarkDimension.fixed(40))
                .foregroundStyle(by: .value("Owner", owner.label))
            }
            
            Chart(ownership) { owner in
                SectorMark(angle: .value("Share", owner.value),
                           innerRadius: MarkDimension.ratio(0.5),
                           outerRadius: MarkDimension.inset(50))
                .foregroundStyle(by: .value("Owner", owner.label))
            }
        }
        .chartLegend(position: .bottom, alignment: .center)
        .dynamicTypeSize(.accessibility2)
        .padding()
    }
}

#Preview {
    Chart_SectorMark_Donut()
}
