//
//  TabView_Background.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_Background: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView",
                           subtitle: "Background",
                           desc: "The new background modifier allows you to have backgrounds that ignore safe area edges, such as the TabView safe area edge.")
                Spacer()
                Divider()
                    .background(.ultraThinMaterial) // In this example, the thin material blur is touching the tab view safe area and by default it will ignore all safe are edges.
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            VStack {
                Text("Messages")
                Spacer()
                Divider()
                    .background(Color.brown.opacity(0.5)) // Using this modifier allows you to provide different backgrounds per tab view if you wanted
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
        }
        .font(.title)
    }
}

#Preview {
    TabView_Background()
}
