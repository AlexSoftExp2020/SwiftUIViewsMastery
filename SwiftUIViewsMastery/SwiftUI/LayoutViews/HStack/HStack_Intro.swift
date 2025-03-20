//
//  HStack_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct HStack_Intro: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("HStack",
                       subtitle: "Introduction",
                       desc: "An HStack will horizontally arrange other views within it.",
                       back: .orange)
            
            HStack {
                Text("View 1")
                Text("View 2")
                Text("View 3")
            }
        }
        .font(.title)
    }
}

#Preview {
    HStack_Intro()
}
