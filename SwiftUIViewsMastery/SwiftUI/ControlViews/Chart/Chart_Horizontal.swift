//
//  Chart_Horizontal.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_Horizontal: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Value", 75),
                    y: .value("Label 1", "Day 1"))
            BarMark(x: .value("Value", 25),
                    y:  .value("Label 2", "Day 2"))
        }
    }
}

#Preview {
    Chart_Horizontal()
}
