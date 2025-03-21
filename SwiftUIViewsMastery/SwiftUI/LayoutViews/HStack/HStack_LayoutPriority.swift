//
//  HStack_LayoutPriority.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.03.2025.
//

import SwiftUI

struct HStack_LayoutPriority: View {
    var body: some View {
        HStack {
            Text("SwiftUI")
                .font(.largeTitle)
                .lineLimit(1) // Don't let text wrap
            Image("SwiftUI")
                .resizable()
                .frame(width: 80, height: 80)
            Text("Bring Balance")
                .font(.largeTitle)
                .layoutPriority(1)
        }
        .padding([.horizontal])
        Divider()
        HStack {
            Text("SwiftUI")
                .font(.largeTitle)
                .layoutPriority(1) // Truncate last
            Image("SwiftUI")
                .resizable()
                .frame(width: 80, height: 80)
            Text("Brings Balance")
                .font(.largeTitle)
                .lineLimit(1) // Don't let text wrap
        }
    }
}

#Preview {
    HStack_LayoutPriority()
}
