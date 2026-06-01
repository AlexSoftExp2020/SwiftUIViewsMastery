//
//  TabView_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 01/06/2026.
//

import SwiftUI

struct TabView_Intro: View {
    var body: some View {
        TabView {
            //Fist Screen
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Introduction", desc: "The TabView can hold multiple views, one for each tab.")
                Text("At the end of a view, you add .tabItem modifier to show a button that allows navigation to that view.").padding()
                Image("TabView")
            }
            .tabItem {
                // Creates a tab button in the tab bar
                Text("Tab 1")
            }
            // Second Screen
            Text("This view represents the Second Screen.")
            .tabItem {
                // Creates a tab button in the tab bar
                    Text("Tab 2")
                }
        }
        .font(.title)
    }
}

#Preview {
    TabView_Intro()
}
