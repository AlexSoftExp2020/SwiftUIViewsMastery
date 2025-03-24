//
//  GeometryReader_GettingSize.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_GettingSize: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("GeometryReader",
                       subtitle: "Getting Size",
                       desc: "Use the geometry reader when you need to get the height and/or width of a space.",
                       back: .clear)
            
            GeometryReader { geometryProxy in
                VStack(spacing: 10) {
                    Text("Width: \(geometryProxy.size.width)")
                    Text("Height: \(geometryProxy.size.height)")
                }
                .padding()
                .foregroundStyle(.white)
            }
            .background(Color.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_GettingSize()
}
