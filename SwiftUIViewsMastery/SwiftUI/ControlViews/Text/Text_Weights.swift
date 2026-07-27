//
//  Text_Weights.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 27/07/2026.
//

import SwiftUI

struct Text_Weights: View {
    var body: some View {
        Text("Text")
            .font(.largeTitle)
        Text("Font Weights")
            .font(.title)
            .foregroundStyle(.gray)
        Image("FontWeight")
        Text("You can apply a variety of font weights to the Text view.")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .foregroundStyle(.white)
            .font(.title)
// NOTE: The fontWeight modifier can ONLY be applied to Text views. Unlike the font modifier which can be applied to any view. To apply weight to any view using the font modifier, see next page.
        Group { // Too many views (> 10) in one container
            Text("Ultralight").fontWeight(.ultraLight)
            Text("Thin").fontWeight(.thin)
            Text("Light").fontWeight(.light)
            Text("Regular").fontWeight(.regular)
            Text("Medium").fontWeight(.medium)
            Text("Semibold").fontWeight(.semibold)
            Text("Bold").fontWeight(.bold)
            Text("Heavy").fontWeight(.heavy)
            Text("Black").fontWeight(.black)
        }.font(.title)
    }
}

#Preview {
    Text_Weights()
}
