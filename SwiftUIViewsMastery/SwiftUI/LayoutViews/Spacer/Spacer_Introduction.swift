//
//  Spacer_Introduction.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct Spacer_Introduction: View {
    var body: some View {
        VStack {
            
            Text("Spacer")
                .font(.largeTitle)
            
//            Color.yellow
//                .frame(height: 100)
//                .overlay {
//                Text("Spacers push things away either vertically or horizontally")
//            }
            Text("Spacers push things away either vertically or horizontally")
                .background(Color.yellow.frame(width: .infinity))
            
            Image(systemName: "arrow.up.circle.fill")
            
            Spacer()
            
            Image(systemName: "arrow.down.circle.fill")
            
            HStack {
                Text("Horizontal Spacer")
                Image(systemName: "arrow.left.circle.fill")
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }
            .padding(.horizontal)
            
            Color.yellow.frame(maxHeight: 50) // Height can decrease but not go higher than 50
        }
        .font(.title) // Apply this font to every view within the VStack
    }
}

#Preview {
    Spacer_Introduction()
}
