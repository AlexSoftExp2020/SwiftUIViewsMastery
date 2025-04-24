//
//  Navigation_SplitView.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_SplitView: View {
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
                .navigationTitle("NavigationSplitView")
        } detail: {
            Text("Detail")
        }
        .font(.title)
    }
}

#Preview {
    Navigation_SplitView()
}
