//
//  TabView_TabItems.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 01/06/2026.
//

import SwiftUI

struct TabView_TabItems: View {
    var body: some View {
        TabView {
            TabOne()
                .tabItem {
                    Text("Tab Text")
                }
            Text("Phone Calls")
                .tabItem {
                    Image(systemName: "phone")
                }
            Text("Outgoing Phome Calls")
                .tabItem {
                    Image(systemName: "phone.arrow.up.right")
                    Text("Outgoing")
                }
            Text("Messages")
                .tabItem {
                    Label("Messages", systemImage: "phome.and.waveform.fill")
                }
        }
    }
}

#Preview {
    TabView_TabItems()
}

struct TabOne: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("TabView",
                       subtitle: "Tab Items",
                       desc: "TabItems can accept Text, Image or both. Notice the order of Text and Image does not matter for the tabItem.")
        }
    }
}
