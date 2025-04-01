//
//  Button_ControlSize.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_ControlSize: View {
    var body: some View {
        VStack(spacing: 60.0) {
            Button("Bordered - Mini") { }
                .controlSize(.mini)
            
            Button("Bordered - Small") { }
                .controlSize(.small)
            
            Button("Bordered - Regular") { }
                .controlSize(.regular)
            
            Button("Bordered - Large") { }
                .controlSize(.large)
            
            Button(action: {}) {
                Text("Bordered - Large")
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
        }
        .buttonStyle(.bordered)
        .tint(.purple)
        .font(.title)
    }
}

#Preview {
    Button_ControlSize()
}
