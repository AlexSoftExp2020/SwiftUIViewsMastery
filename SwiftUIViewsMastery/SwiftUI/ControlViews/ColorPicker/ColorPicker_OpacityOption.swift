//
//  ColorPicker_OpacityOption.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 05.04.2025.
//

import SwiftUI

struct ColorPicker_OpacityOption: View {
    @State private var color = Color.pink
    
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("ColorPicker",
                       subtitle: "Opacity Option",
                       desc: "By default, the color picker shows an opacity option. You can disable this option.",
                       back: color)
            
            ColorPicker("Pick a Color",
                        selection: $color)
            .padding(.horizontal)
            
            ColorPicker("Pick a Color (No Opacity)",
                        selection: $color,
                        supportsOpacity: false)
                .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    ColorPicker_OpacityOption()
}
