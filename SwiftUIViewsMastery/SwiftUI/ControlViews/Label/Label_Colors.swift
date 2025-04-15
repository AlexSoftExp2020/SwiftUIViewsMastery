//
//  Label_Colors.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 15.04.2025.
//

import SwiftUI

struct Label_Colors: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Colors",
                       subtitle: "ForegroundStyle",
                       desc: "Use foregroundStyle to change the icon and text.",
                       back: .pink)
            
            Label("Camera Settings", systemImage: "camera.badge.ellipsis")
                .foregroundStyle(.pink)
            
            DescView("Divide up the text and icon so you format them differently.",
                     back: .pink)
            
            Label {
                Text("Camera Settings")
                    .foregroundStyle(.purple)
            } icon: {
                Image(systemName: "camera.badge.ellipsis")
                    .foregroundStyle(.pink)
            }
        }
        .font(.title)
    }
}

#Preview {
    Label_Colors()
}
