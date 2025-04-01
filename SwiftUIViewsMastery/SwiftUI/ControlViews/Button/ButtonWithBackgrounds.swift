//
//  ButtonWithBackgrounds.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct ButtonWithBackgrounds: View {
    var body: some View {
        VStack(spacing: 60) {
            Button(action: {}) {
                Text("Solid Button")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            
            Button(action: {}) {
                Text("Button With Shadow")
                    .padding(12)
                    .foregroundStyle(.white)
                    .background(Color.purple)
                    .shadow(color: Color.purple, radius: 20, y: 5)
            }
            
            Button(action: {}) {
                Text("Button With Rounded Ends")
                    .padding(EdgeInsets(top: 12,
                                        leading: 20,
                                        bottom: 12,
                                        trailing: 20))
                    .foregroundStyle(.white)
                    .background(Color.purple, in: Capsule())
            }
        }
        .font(.title)
    }
}

#Preview {
    ButtonWithBackgrounds()
}
