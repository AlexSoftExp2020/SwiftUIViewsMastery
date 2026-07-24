//
//  TabView_Badge.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_Badge: View {
    var body: some View {
        TabView {
            // Tab 1
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "Badge",
                           desc: "Use the badge modifier to add a number to the tab item.")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            // Tab 2
            VStack {
                Text("Messages")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
            .badge(15) //NOTE: The operating system will set the color of the badge. There isn't a way to change the color.
        }
        .font(.title)
    }
}

#Preview {
    TabView_Badge()
}
