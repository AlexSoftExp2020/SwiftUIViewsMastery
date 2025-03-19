//
//  Version2.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct Version2: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Title",
                       subtitle: "Subtitle",
                       desc: "Short description of what I am demonstrating goes here.",
                       back: .purple,
                       textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    Version2()
}
