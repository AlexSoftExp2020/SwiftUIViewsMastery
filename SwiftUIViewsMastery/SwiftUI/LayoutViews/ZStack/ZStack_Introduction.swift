//
//  ZStack_Introduction.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct ZStack_Introduction: View {
    var body: some View {
        ZStack {
            // LAYER 1: Furthest back
            Color.gray
            
            // LAYER 2: This Vstack is on top.
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("ZStack are great for setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Text("But notice the Color stops at the Safe Ares edges (white areas on top and bottom).")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
            }
            .font(.title)
        }
    }
}

#Preview {
    ZStack_Introduction()
}
