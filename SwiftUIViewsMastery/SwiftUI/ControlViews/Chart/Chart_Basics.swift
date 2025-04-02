//
//  Chart_Basics.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import Charts
import SwiftUI

struct Chart_Basics: View {
    var body: some View {
        Chart {
            BarMark(x: PlottableValue.value("Label 1", "Day 1"))
            BarMark(x: PlottableValue.value("Label 2", "Day 2"))
        }
        .padding()
    }
}

#Preview {
    Chart_Basics()
}
