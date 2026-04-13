//
//  Slider_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 13/04/2026.
//

import SwiftUI

struct Slider_Intro: View {
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Slider").font(.largeTitle)
            Text("Introduction").foregroundStyle(.gray)
            Text("Associate the SLider with an @State variable that will control where the thumb (circle) will be on the slider's track")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundStyle(Color.black)
            
            Text("Default min value is 0.0 and max value is 1.0")
            
            Slider(value: $sliderValue)
                .padding(.horizontal)
            
            Text("Value is: ") +
            Text("\(sliderValue)").foregroundStyle(.orange)
        }.font(.title)
    }
}

#Preview {
    Slider_Intro()
}
