//
//  Description3.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct Description3: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("Short description of what I am demonstrating goes here.")
                .frame(maxWidth: .infinity) // Extend until you can't go anymore.
                .font(.title)
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.blue)
        }
    }
}

#Preview {
    Description3()
}
