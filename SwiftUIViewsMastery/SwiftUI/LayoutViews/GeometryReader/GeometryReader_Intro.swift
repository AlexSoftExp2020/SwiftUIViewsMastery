//
//  GeometryReader_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct GeometryReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader",
                       subtitle: "Introduction",
                       desc: "GeometryReader is a container view that pushes out to fill up all available space. You use it to help with positioning items within it.",
                       back: .clear)
            
            GeometryReader { _ in
                // No child views inside
            }
            .background(Color.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_Intro()
}
