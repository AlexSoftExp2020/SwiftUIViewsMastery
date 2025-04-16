//
//  LabeledContent_Customization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct LabeledContent_Customization: View {
    var body: some View {
        VStack {
            LabeledContent("Label") {
                Text("Value")
            }
            
            LabeledContent("Label") {
                Text("Value")
                    .foregroundStyle(.purple)
            }
            
            LabeledContent {
                Text("Value")
            } label: {
                Text("Label")
                    .foregroundStyle(.purple)
            }
            LabeledContent("Label") {
                Text("Value")
            }
            .foregroundStyle(.purple)
            
            LabeledContent("Label") {
                Text("Value")
            }
            .padding()
            .background(Color.blue.opacity(0.1), in: RoundedRectangle(cornerRadius: 16))
        }
        .padding()
        .font(.title)
    }
}

#Preview {
    LabeledContent_Customization()
}
