//
//  ProgressView_CurrentValue.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_CurrentValue: View {
    @State private var progress = 0.2
    @State private var current = 20
    @State private var total = 100
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("ProgressView",
                       subtitle: "Current Value Label",
                       desc: "You can also the currentValueLabel parameter to indicate progress values.",
                       back: .blue,
                       textColor: .white)
            
            ProgressView(value: progress) {
                Text("Fetching Records")
            } currentValueLabel: {
                Text("\(current) out of \(total)")
            }
            .padding()
            Text("Allows customizations:")
            ProgressView(value: progress) {
                Text("Fetching Records")
            } currentValueLabel: {
                Text("\(current) out of \(total)")
                    .font(.title3)
                    .italic()
                    .foregroundStyle(.green)
            }
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_CurrentValue()
}
