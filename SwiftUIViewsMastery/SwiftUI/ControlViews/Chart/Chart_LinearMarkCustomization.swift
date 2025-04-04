//
//  Chart_LinearMarkCustomization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 04.04.2025.
//

import SwiftUI
import Charts

struct Chart_LinearMarkCustomization: View {
    @State private var data = GroupInfo.fetchData()
    @State private var iMethod = InterpolationMethod.linear
    
    var body: some View {
        VStack {
            Chart(data) { datum in
                LineMark(x: .value("Category", datum.x),
                         y: .value("Quantity", datum.y)
                )
                .foregroundStyle(by: .value("Group", datum.group))
                .lineStyle(StrokeStyle(lineWidth: 4, lineJoin: CGLineJoin.round))
                .symbol(by: .value("", datum.group))
                .interpolationMethod(iMethod)
            }
            .padding()
            .dynamicTypeSize(.xLarge)
            
            GroupBox("some Line Options") {
                HStack(spacing: 16) {
                    Button("Rounded") { iMethod = .catmullRom }
                    Button("Linear") { iMethod = .linear }
                    Button("Cardinal") { iMethod = .cardinal }
                    Button("Mono") { iMethod = .monotone }
                    Button("Step") { iMethod = .stepCenter }
                }
            }
        }
    }
}

#Preview {
    Chart_LinearMarkCustomization()
}
