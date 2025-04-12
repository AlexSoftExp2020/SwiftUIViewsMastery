//
//  Gauge_CircularSize.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 12.04.2025.
//

import SwiftUI

struct Gauge_CircularSize: View {
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress) {
                Text("Level")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)
            .scaleEffect(4)
            .frame(width: 250, height: 200)
            
            Gauge(value: progress, label: {})
                .gaugeStyle(.accessoryCircular)
                .tint(.orange)
                .scaleEffect(4)
                .frame(width: 250, height: 200)
                .overlay(alignment: .bottom) {
                    Text("Level")
                        .font(.largeTitle)
                }
        }
    }
}

#Preview {
    Gauge_CircularSize()
}
