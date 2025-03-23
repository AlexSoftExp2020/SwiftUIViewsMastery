//
//  ZStack_IgnoresSafeAreaEdges.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct ZStack_IgnoresSafeAreaEdges: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Edges Ignoring Safe Area")
                    .foregroundStyle(.white)
                
                Text("Ignoring the Safe Areas will extend a view to fill the whole scene.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color.green)
            }
            .font(.title)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ZStack_IgnoresSafeAreaEdges()
}
