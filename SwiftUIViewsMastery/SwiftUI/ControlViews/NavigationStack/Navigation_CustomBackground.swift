//
//  Navigation_CustomBackground.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_CustomBackground: View {
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                    .background(
                        LinearGradient(colors: [.green, .blue],
                                       startPoint: .leading,
                                       endPoint: .trailing)
                        .opacity(0.5)
                        .shadow(.drop(radius: 2, y: 2)),
                        ignoresSafeAreaEdges: .top)
                
                Spacer()
            }
            .navigationTitle("Custom Backgorund")
        }
    }
}

#Preview {
    Navigation_CustomBackground()
}
