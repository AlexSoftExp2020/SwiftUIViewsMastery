//
//  Gauge_Labels.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 12.04.2025.
//

import SwiftUI

struct Gauge_Labels: View {
    @State private var value = 0.75
    var body: some View {
        VStack(spacing: 50) {
            Gauge(value: value) {
                Text("Range")
            } currentValueLabel: {
                Text(value, format: .number) // number under gauge
            } markedValueLabels: {
                Text("Not currently used")
            }
            
            Gauge(value: value) {
                Text("Range")
            } currentValueLabel: {
                Text(value, format: .number) // number inside gauge
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.blue)
            
            Gauge(value: value) {
                Text("Range")
            } currentValueLabel: {
                Text(value, format: .number) // number under gauge
            } minimumValueLabel: {
                Text(0, format: .number) // leading
            } maximumValueLabel: {
                Text(100, format: .number) // trailing
            }
            
            Gauge(value: value) {
                Text("Range") // Not shown
            } currentValueLabel: {
                Text(value, format: .number)
            } minimumValueLabel: {
                Image(systemName: "circle")
            } maximumValueLabel: {
                Image(systemName: "circle.fill")
            }
            .gaugeStyle(.accessoryLinear)
            .tint(.blue)
        }
    }
}

#Preview {
    Gauge_Labels()
}
