//
//  Chart_WithForEach.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_WithForEach: View {
    @State private var data = [75, 25, 100, 50]
    var body: some View {
        Chart {
            ForEach(data, id: \.self) { datum in
                BarMark(x: .value("Labels", "\(datum)"),
                        y: .value("Values", datum))
            }
        }
    }
}

#Preview {
    Chart_WithForEach()
}
