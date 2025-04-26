//
//  NavLink_PopToRoot.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct NavLink_PopToRoot: View {
    @State private var navPath: [String] = []
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                NavigationLink(value: "View 2") {
                    Text("Go to View 2")
                }
            }
            .navigationTitle("Pop to Root")
            .navigationDestination(for: String.self) { pathValue in
                if pathValue == "View 2" {
                    NavLinkView2(navPath: $navPath)
                } else {
                    NavLinkView3(navPath: $navPath)
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    NavLink_PopToRoot()
}
