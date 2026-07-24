//
//  TabView_Colors.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_Colors: View {
    var body: some View {
        TabView {
            // Tab 1
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Tab Item Colors", desc: "Set the color of the active tab item by setting the accent color for the TabView.")
                Image("AccentColor")
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            // Tab 2
            Text("Second Screen")
                .tabItem {
                    Image(systemName: "moon.fill")
                }
                .foregroundStyle(Color.red) // Notice that I am setting the foreground color of the second tabItem to red. This will have no effect on the color of the tab item. The background modifier will not work either.
            // Tab 3
            Text("Third Screen")
                .tabItem {
                    Image(systemName: "sun.min.fill")
                }
        }
        .font(.title)
        .accentColor(.yellow) // The only thing that works is to set the accent color on the TabView itself. The accentColor modifier was replaced with tint but tint isn't woring here yet.
    }
}

#Preview {
    TabView_Colors()
}
