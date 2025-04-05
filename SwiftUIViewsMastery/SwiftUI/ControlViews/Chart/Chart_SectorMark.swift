//
//  Chart_SectorMark.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI
import Charts

struct Chart_SectorMark: View {
    let ownership = Share.fetchData()
    
    var body: some View {
        VStack {
            Chart(ownership) { owner in
                SectorMark(angle: .value("Share", owner.value),
                           angularInset: 4)
                .cornerRadius(8) // Specific for charts
                .blur(radius: owner.label == "Celina" ? 4 : 0)
            }
            .padding(.horizontal)
            
            Chart(ownership) { owner in
                SectorMark(angle: .value("Share", owner.value))
                    .foregroundStyle(by: .value("Owner", owner.label))
            }
        }
        .chartLegend(position: .bottom, alignment: .center)
        .dynamicTypeSize(.accessibility2)
        .padding()
    }
}

#Preview {
    Chart_SectorMark()
}
