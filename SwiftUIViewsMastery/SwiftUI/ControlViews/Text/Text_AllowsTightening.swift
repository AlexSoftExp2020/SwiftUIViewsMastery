//
//  Text_AllowsTightening.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 28/07/2026.
//

import SwiftUI

struct Text_AllowsTightening: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("AllowsTightening")
            Text("You might want to tighten up some text that might be too long.")
            Text("In the example below, the green has .allowTightening(true)")
            Group {
                Text("Allows tightening to allow text to fit in one line.")
                    .foregroundStyle(.red)
                    .allowsTightening(false)
                    .padding(.horizontal)
                    .lineLimit(1)
                Text("Allows tightening to allow text to fit in one line.")
                    .foregroundStyle(.green)
                    .allowsTightening(true)
                    .padding(.horizontal)
                    .lineLimit(1)
            }.padding(.horizontal)
        }
        //Allows Tightening can be helpful when you see the last word getting truncated. Applying it may not even fully work depending on just how much space can be tightened. With the default font, I notice I can get a couple of characters worth of space to tighten up.
    }
}

#Preview {
    Text_AllowsTightening()
}
