//
//  Shapes.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Shapes")
                .font(.largeTitle)
            
            Text("Short Introduction")
                .foregroundStyle(Color.gray)
            
            Text("I'll make shapes, give them color and put them behind other views just for decoration.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(Color.white)
            
            Text("This text has a rounded rectangle behind it")
                .foregroundStyle(Color.white)
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 20) // Create the shape
                        .fill(Color.blue) // Make the shape blue
                }
                .padding()
        }
        .font(.title)
    }
}

#Preview {
    Shapes()
}
