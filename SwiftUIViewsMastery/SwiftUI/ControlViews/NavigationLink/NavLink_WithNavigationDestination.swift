//
//  NavLink_WithNavigationDestination.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct NavLink_WithNavigationDestination: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(value: "NavigationLink 1") {
                    Text("Navigate 1")
                }
            }
            .navigationDestination(for: String.self) { stringValue in
                Text("Value is: ") + Text("\(stringValue)").bold()
            }
            .navigationTitle("Navigation Destination")
        }
        .font(.title)
    }
}

#Preview {
    NavLink_WithNavigationDestination()
}
