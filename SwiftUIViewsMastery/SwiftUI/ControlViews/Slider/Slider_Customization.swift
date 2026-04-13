//
//  Slider_Customization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 13/04/2026.
//

import SwiftUI

struct Slider_Customization: View {
    @State private var sliderValue = 0.5
    var body: some View {
        VStack(spacing: 40) {
            Text("Slider").font(.largeTitle)

            Text("Customization").font(.title)

            Text("At the time of this writing, there isn't a way to color the thumb. But we can change the background color and apply some other modifiers.")

            Text("Use the accentColor modifier to change the color of the track.")

            Slider(value: $sliderValue)
                .padding(.horizontal)
                .tint(.orange)

            Text("Using shapes and outlines.")

            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().stroke(Color.orange, lineWidth: 2))
                .padding(.horizontal)

            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().fill(Color.orange))
                .tint(.black)
                .padding(.horizontal)
        }.padding(.horizontal)
    }
}

#Preview {
    Slider_Customization()
}
