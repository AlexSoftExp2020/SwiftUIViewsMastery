//
//  Button_Role.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_Role: View {
    var body: some View {
        VStack(spacing: 100.0) {
            Button("Normal") { }
            
            Button("Destructive", role: .destructive) { }
            
            Button("Destructive", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            Button("Cancel", role: .cancel) { }
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
        .font(.title)
    }
}

#Preview {
    Button_Role()
}
