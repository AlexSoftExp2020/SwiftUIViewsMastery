//
//  Gauge_Circular.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 11.04.2025.
//

import SwiftUI

struct Gauge_Circular: View {
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress, label: {})
                .gaugeStyle(.accessoryCircular)
            
            Gauge(value: progress) {
                Text("Level")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)
            
            Gauge(value: progress) {
                Text("Level")
                    .padding(5)
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.red)
        }
    }
}

#Preview {
    Gauge_Circular()
}
