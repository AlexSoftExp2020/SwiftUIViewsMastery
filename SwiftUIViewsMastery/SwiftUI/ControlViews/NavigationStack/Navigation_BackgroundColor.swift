//
//  Navigation_BackgroundColor.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_BackgroundColor: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.25)
                    .ignoresSafeArea()
                
                Color.gray.opacity(0.25)
            }
            .navigationTitle("Background Color")
        }
    }
}

#Preview {
    Navigation_BackgroundColor()
}
