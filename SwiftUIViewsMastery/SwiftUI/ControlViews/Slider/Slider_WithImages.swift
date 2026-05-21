//
//  Slider_WithImages.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 13/04/2026.
//

import SwiftUI

struct Slider_WithImages: View {
    @State private var sliderValue = 0.5

    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Slider",
                       subtitle: "With Images",
                       desc: "Combine the slider with images or values.",
                       back: .orange, textColor: .black)

            Slider(value: $sliderValue,
                   minimumValueLabel: Image(systemName: "tortoise"),
                   maximumValueLabel: Image(systemName: "hare"), label: {})
            .foregroundStyle(.green)
            .padding()

            Slider(value: $sliderValue,
                   minimumValueLabel: Text("0"),
                   maximumValueLabel: Text("1"), label: {})
            .padding()

            VStack {
                Slider(value: $sliderValue)
                    .tint(.orange)
                HStack {
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }
                .foregroundStyle(.orange)
                .padding(.top, 8)
            }.padding()
        }.font(.title)
    }
}

#Preview {
    Slider_WithImages()
}
