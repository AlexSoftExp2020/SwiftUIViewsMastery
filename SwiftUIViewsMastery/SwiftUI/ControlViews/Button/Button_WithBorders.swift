//
//  Button_WithBorders.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_WithBorders: View {
    var body: some View {
        VStack(spacing: 60) {
            Button(action: {}) {
                Text("Square Border Button")
                    .padding()
                    .border(Color.purple, width: 2)
            }
            
            Button(action: {}) {
                Text("Border Button").padding()
                    .background {
                    RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.purple, lineWidth: 2)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    Button_WithBorders()
}
