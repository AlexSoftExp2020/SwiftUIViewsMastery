//
//  ZStack_BackgroundColor_Problem.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct ZStack_BackgroundColor_Problem: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack") // This view is undet the notch
                    .font(.largeTitle)
                
                Text("Ignores Safe Area Edges")
                    .foregroundStyle(.white)
                
                Text("Having the ZStack edges ignoring the safe area edges might be a mistake. \nYou notice that the top Text view is completely under the notch.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Spacer() // Added a spacer to push the views up.
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ZStack_BackgroundColor_Problem()
}
