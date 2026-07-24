//
//  TabView_Navigation.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_Navigation: View {
    @State private var selectedTab = 1 // Set which tab is active
    var body: some View {
        // Tell the TabView which variable to listen to for changes
        TabView(selection: $selectedTab) {
            // Tab 1
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "Navigation",
                           desc: "Add a unique tag value to each screen (view) you want to programmatically navigate to. You can then bind a variable to the TabView's selection property and change that variable to navigate.")
                Button("Go to Tab 2") {
                    selectedTab = 2 // Change the state property bound to the TabView's selection parameter to navigate to a different tab.
                }
                .tabItem {
                    Image(systemName: "star.fill")
                }
                .tag(1) // Add tags to enable programmatically navigating to tabs.

                // Tab 2
                VStack {
                    Text("Second Screen")
                }
                .tabItem {
                    Image(systemName: "moon.fill")
                }
                .tag(2)
            }
            .font(.title)
        }
    }
}

#Preview {
    TabView_Navigation()
}
