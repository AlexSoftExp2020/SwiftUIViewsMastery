//
//  Button_TextModifiers.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_TextModifiers: View {
    var body: some View {
        VStack(spacing: 40) {
            Button {} label: {
                Text("Forgot Password?")
                Text("Tap to Recover")
                    .foregroundStyle(.orange)
            }
            Button {} label: {
                VStack {
                    Text("New User")
                    Text("(Register Here)").font(.body)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    Button_TextModifiers()
}
