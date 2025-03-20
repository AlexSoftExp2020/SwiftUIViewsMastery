//
//  Spacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct Spacing: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundStyle(.gray)
            
            Text("The VStack initializer allows you to set the spacing between all the views inside the VStack")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .font(.title)
                .foregroundStyle(.white)
            
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            
            Text("The spacing herebetween all of these views is 80")
                .font(.title)
        }
    }
}

#Preview {
    Spacing()
}
