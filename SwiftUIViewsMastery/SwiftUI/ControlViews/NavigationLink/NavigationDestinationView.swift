//
//  NavigationDestinationView.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct NavigationDestinationView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Navigation Destination")
        }
        .navigationTitle("Destination")
        .font(.title)
    }
}

#Preview {
    NavigationDestinationView()
}
