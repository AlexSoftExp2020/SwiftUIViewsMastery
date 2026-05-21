//
//  Slider_Tint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 21/05/2026.
//

import SwiftUI

struct Slider_Tint: View {
    @State private var sliderValue = 0.5

    var body: some View {
        VStack {
            HeaderView("Slider",
                       subtitle: "Tint",
                       desc: "Tint can also be used to change the color of the Slider's track.")

            Slider(value: $sliderValue,
                   minimumValueLabel: Image(systemName: "tortoise"),
                   maximumValueLabel: Image(systemName: "hare"), label: {})
            .foregroundStyle(.green)
            .tint(.orange)
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    Slider_Tint()
}
