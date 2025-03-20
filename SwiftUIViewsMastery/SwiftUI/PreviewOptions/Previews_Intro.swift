//
//  Previews_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct Previews_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Previews")
                .font(.largeTitle)
            Text("Introduction")
                .foregroundStyle(.gray)
            Text("Xcode looks for a struct that conforms to the PreviewProvider protocol ans accesses its previews property to display a view on the Canvas.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
        }.font(.title)
    }
}

#Preview {
    Previews_Intro()
}
