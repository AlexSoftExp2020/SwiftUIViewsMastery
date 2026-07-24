//
//  TabView_UITabBarAppearance.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_UITabBarAppearance: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView", subtitle: "UITabBarAppearance", desc: "Use UITabBarAppearance to apply a style/color on All tabs.")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            VStack {
                Text("Messages")
            }
            .tabItem {
                Image(systemName: "envelope")
                Text("Messages")
            }
        }
        .font(.title)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.green.opacity(0.2))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    TabView_UITabBarAppearance()
}
