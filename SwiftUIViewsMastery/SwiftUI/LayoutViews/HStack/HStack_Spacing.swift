//
//  HStack_Spacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct HStack_Spacing: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("HStack",
                       subtitle: "Spacing",
                       desc: "The HStack initializer allows you to set the spacing between all the views inside the HStack.",
                       back: .orange)
            
            Text("Default Spacing")
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.font(.largeTitle)
            
            Text("Spacing: 100")
                .font(.title)
            HStack(spacing: 100) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    HStack_Spacing()
}
