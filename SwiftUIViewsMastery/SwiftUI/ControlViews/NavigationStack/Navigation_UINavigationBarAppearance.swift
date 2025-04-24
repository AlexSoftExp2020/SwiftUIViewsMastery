//
//  Navigation_UINavigationBarAppearance.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_UINavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("")
            }
            .navigationTitle("Appearance")
            .font(.title)
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            
            appearance.backgroundColor = UIColor(Color.green.opacity(0.25))
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    Navigation_UINavigationBarAppearance()
}
