//
//  Subtitle.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct Subtitle: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title) // Set to be the second largest font.
                .foregroundStyle(Color.gray) // Change text color to gray.
        }
    }
}

#Preview {
    Subtitle()
}
