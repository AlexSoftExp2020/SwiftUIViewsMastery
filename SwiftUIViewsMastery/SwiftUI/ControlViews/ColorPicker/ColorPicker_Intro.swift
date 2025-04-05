//
//  ColorPicker_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct ColorPicker_Intro: View {
    @State private var color = Color.pink
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("ColorPicker",
                       subtitle: "Introduction",
                       desc: "Use the ColorPicker to provide your users with color options. You will need to bind it to a color variable to store the color selected.",
                       back: color)
            
            Spacer()
            
            ColorPicker("Pick a color", selection: $color)
                .padding(.horizontal)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    ColorPicker_Intro()
}
