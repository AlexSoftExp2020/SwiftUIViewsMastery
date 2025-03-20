//
//  ViewSizes_Push_Out.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct ViewSizes_Push_Out: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
            Text("Views that Push Out")
                .font(.title)
                .foregroundStyle(.gray)
            Text("Some views will push out to fill up all available space within their parent.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(Color.purple)
            
            Color.purple
            // Add 5 layers on top of the color view
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding(), // Add spacing around the symbol
                    alignment: .topLeading)
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding(),
                    alignment: .topTrailing)
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding(),
                    alignment: .bottomLeading)
                .overlay(
                    Image(systemName: "arrow.down.right")
                        .padding(),
                    alignment: .bottomTrailing)
                .overlay(Text("Colors are Push-Out views"))
                
        }.font(.largeTitle) // Make all text and symbols larger
    }
}

#Preview {
    ViewSizes_Push_Out()
}
