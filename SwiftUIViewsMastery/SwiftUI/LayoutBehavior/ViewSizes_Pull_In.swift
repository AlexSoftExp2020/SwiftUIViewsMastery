//
//  ViewSizes_Pull_In.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct ViewSizes_Pull_In: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .font(.largeTitle)
            Text("Views that Pull In")
                .foregroundStyle(.gray)
            Text("Some views minimize their frame size so it is only as big as the content within it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
            
            Image(systemName: "arrow.down.to.line.alt")
            
            HStack { // Order views horizontally
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull-In views tend to center themselves within their parent container view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundStyle(Color.white)
        }.font(.title)
    }
}

#Preview {
    ViewSizes_Pull_In()
}
