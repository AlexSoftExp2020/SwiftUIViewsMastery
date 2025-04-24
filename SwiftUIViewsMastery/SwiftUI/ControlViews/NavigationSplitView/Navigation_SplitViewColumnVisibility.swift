//
//  Navigation_SplitViewColumnVisibility.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_SplitViewColumnVisibility: View {
    @State private var visibility = NavigationSplitViewVisibility.all
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            Text("Sidebar")
        } detail: {
            VStack {
                Text("Detail")
                Button("Show Sidebar") {
                    visibility = .all
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    Navigation_SplitViewColumnVisibility()
}
