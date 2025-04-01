//
//  Button_WithPhotos.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Button_WithPhotos: View {
    var body: some View {
        VStack(spacing: 100) {
            Button(action: {}) {
                Image(systemName: "yosemite")
            }
            
            Button(action: {}) {
                Image("yosemite")
                    .renderingMode(.original)
                    .clipShape(Capsule())
            }
            
            Button(action: {}) {
                Image("yosemite")
                    .renderingMode(.template)
                    .clipShape(Capsule())
            }
        }
        .font(.title)
    }
}

#Preview {
    Button_WithPhotos()
}
