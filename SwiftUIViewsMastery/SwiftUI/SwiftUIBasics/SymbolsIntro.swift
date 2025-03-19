//
//  SymbolsIntro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct SymbolsIntro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Images")
                .font(.largeTitle)
            
            Text("Using SF Symbols")
                .foregroundStyle(.gray)
            
            Text("You will see I use icons or symbols to add clarify to what I'm demonstrating. These come from Apple's new symbol font library which you can browse using an app called 'SF Symbols'.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
            
            // Use "systemName" when you want to use "SF Symbols"
            Image(systemName: "hand.thumbsup.fill")
                .font(.largeTitle) // Make the symbol larger
            
            Image("SF Symols") // Regular image from Assets.xsassets
        }
        .font(.title)
    }
}

#Preview {
    SymbolsIntro()
}
