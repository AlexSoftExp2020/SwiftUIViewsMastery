//
//  Navigation_SplitViewThreeColumns.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_SplitViewThreeColumns: View {
    var body: some View {
        NavigationSplitView(columnVisibility: Binding.constant(.all)) {
            Text("Sidebar")
        } content: {
            Text("Content")
        } detail: {
            Text("Detail")
        }
        .font(.title)
    }
}

#Preview {
    Navigation_SplitViewThreeColumns()
}
