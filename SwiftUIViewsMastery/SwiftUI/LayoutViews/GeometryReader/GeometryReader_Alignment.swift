//
//  GeometryReader_Alignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader",
                       subtitle: "Alignment",
                       desc: "Child views within the GeometryReader are aligned in the upper left corner by default.",
                       back: .clear)
            
            GeometryReader { _ in
                Image(systemName: "arrow.up.left")
                    .padding()
            }
            .background(Color.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_Alignment()
}
