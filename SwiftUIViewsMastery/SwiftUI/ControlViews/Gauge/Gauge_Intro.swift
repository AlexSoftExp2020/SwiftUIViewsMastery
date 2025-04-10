//
//  Gauge_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 11.04.2025.
//

import SwiftUI

struct Gauge_Intro: View {
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 50.0) {
            Gauge(value: progress) {
                Text("Default in iOS")
            }
            
            Gauge(value: progress) {
                Text("linearCapacity")
            }
            .gaugeStyle(.linearCapacity)
            .tint(.purple)
            
            Gauge(value: progress) {
                Text("accessoryLinear")
            }
            .gaugeStyle(.accessoryLinear)
            .tint(.pink)
            
            Gauge(value: progress) {
                Text("accessoryLinearCapacity")
            }
            .gaugeStyle(.accessoryLinearCapacity)
        }
        .padding(.horizontal)
        .font(.title)
    }
}

#Preview {
    Gauge_Intro()
}
