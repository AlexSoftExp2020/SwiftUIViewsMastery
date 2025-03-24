//
//  GeometryReader_Layers.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_Layers: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader",
                       subtitle: "Layers",
                       desc: "The child views within a GeometryReader will stack on top of each other, much like a ZStack.",
                       back: .clear)
            
            GeometryReader { _ in
                Image(systemName: "18.circle")
                    .padding()
                Image(systemName: "20.circle")
                    .padding()
                Image(systemName: "50.circle")
                    .padding()
            }
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(Color.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_Layers()
}
