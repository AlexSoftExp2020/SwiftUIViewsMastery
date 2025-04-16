//
//  LabeledContent_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct LabeledContent_Intro: View {
    var body: some View {
        VStack(spacing: 50.0) {
            VStack(spacing: 24.0) {
                LabeledContent("Label", value: "Value")
                
                LabeledContent("Label") {
                    Label("Value", systemImage: "camera.macro")
                }
                
                LabeledContent("Label", value: 55, format: .percent)
                
                LabeledContent {
                    Text("Value")
                        .font(.title.weight(.thin))
                } label: {
                    Text("Label")
                        .fontWeight(.bold)
                }
            }
            .padding()
            
            Form {
                LabeledContent("Number") {
                    Text(55, format: .number)
                }
                
                Text("Text with Badge")
                    .badge(55)
            }
        }
        .font(.title)
    }
}

#Preview {
    LabeledContent_Intro()
}
