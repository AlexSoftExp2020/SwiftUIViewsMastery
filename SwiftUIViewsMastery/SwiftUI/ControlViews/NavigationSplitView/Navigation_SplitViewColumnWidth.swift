//
//  Navigation_SplitViewColumnWidth.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_SplitViewColumnWidth: View {
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all)) {
            Text("Sidebar")
                .navigationSplitViewColumnWidth(120)
        } content: {
            Text("Content")
                .navigationSplitViewColumnWidth(min: 900,
                                                ideal: 1000,
                                                max: 1000)
        } detail: {
            Text("Detail")
                .navigationSplitViewColumnWidth(200)
        }
        .navigationSplitViewStyle(.balanced)
        .font(.title)
    }
}

#Preview {
    Navigation_SplitViewColumnWidth()
}
