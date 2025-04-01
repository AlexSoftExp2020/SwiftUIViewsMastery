//
//  Button_ButtonBorderShape.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_ButtonBorderShape: View {
    var body: some View {
        VStack(spacing: 80.0) {
            Button("Automatic") { }
                .buttonBorderShape(.automatic)
            
            Button("Capsule") { }
                .buttonBorderShape(.capsule)
            
            Button("Capsule") { }
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
            
            Button("RoundedRectangle") { }
                .buttonBorderShape(.roundedRectangle)
            
            Button("Set Radius") { }
                .buttonBorderShape(.roundedRectangle(radius: 24))
        }
        .buttonStyle(.bordered)
        .controlSize(.large)
        .font(.title)
        .tint(.purple)
    }
}

#Preview {
    Button_ButtonBorderShape()
}
