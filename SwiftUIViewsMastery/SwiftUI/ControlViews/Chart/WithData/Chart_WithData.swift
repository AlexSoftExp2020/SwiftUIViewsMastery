//
//  Chart_WithData.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 02.04.2025.
//

import SwiftUI
import Charts

struct Chart_WithData: View {
    @State private var data = [75, 25, 100, 50]
    
    var body: some View {
        Chart(data, id: \.self) { datum in
            BarMark(x: .value("Labels", "\(datum)"),
                    y: .value("Values", datum))
        }
    }
}

#Preview {
    Chart_WithData()
}
