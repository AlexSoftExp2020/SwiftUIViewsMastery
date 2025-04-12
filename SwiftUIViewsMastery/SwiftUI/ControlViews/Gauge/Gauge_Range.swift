//
//  Gauge_Range.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 12.04.2025.
//

import SwiftUI

struct Gauge_Range: View {
    @State private var value = 75.0
    private let minValue = 0.0
    private let maxValue = 100.0
    
    var body: some View {
        VStack {
            Gauge(value: value) {
                Text("No Range")
            }
            
            Gauge(value: value, in: minValue...maxValue) {
                Text("Range")
            }
            
            Gauge(value: value, in: minValue...maxValue) {
                Text("Range")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.blue)
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    Gauge_Range()
}
