//
//  ZStack_BackgroundColor_Solution.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct ZStack_BackgroundColor_Solution: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea() // Have JUST the color ignore the safe areas edges, not the VStack.
            
            VStack {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Color Ignores Safe Area Edges")
                    .foregroundStyle(.white)
                
                Text("To solve the problem, you want just the color (bottom layer) to ignore the safe area edges and fill the screen. Other layers above it will stay within the Safe Area.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                Spacer()
            }
            .font(.title)
        }
    }
}

#Preview {
    ZStack_BackgroundColor_Solution()
}
