//
//  Chart_Values.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_Values: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Label 1", "Day 1"),
                    y: .value("Value", 75))
            BarMark(x: .value("Label 2", "Day 2"),
                    y: .value("Value", 25))
        }
    }
}

#Preview {
    Chart_Values()
}
