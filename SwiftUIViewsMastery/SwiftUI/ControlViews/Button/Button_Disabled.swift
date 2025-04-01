//
//  Button_Disabled.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_Disabled: View {
    var body: some View {
        VStack(spacing: 60) {
            
            Button("Enabled") { }
            
            Button("Disabled") { }
                .disabled(true)
            
            Button("Enabled") { }
                .buttonStyle(.bordered)
            
            Button("Disabled") { }
                .buttonStyle(.bordered)
                .disabled(true)
            
            Button("Enabled") { }
                .buttonStyle(.borderedProminent)
            
            Button("Disabled") { }
                .buttonStyle(.borderedProminent)
                .disabled(true)
        }
        .controlSize(.large)
        .font(.title)
        .tint(.purple)
    }
}

#Preview {
    Button_Disabled()
}
