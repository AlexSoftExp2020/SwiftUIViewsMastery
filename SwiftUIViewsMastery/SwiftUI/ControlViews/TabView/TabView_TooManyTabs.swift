//
//  TabView_TooManyTabs.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_TooManyTabs: View {
    var body: some View {
        TabView {
            Text("Call Screen").tabItem {
                Image(systemName: "phone")
                Text("Call")
            }
            Text("Outgoing Phone Calls Screen").tabItem {
                Image(systemName: "phone.arrow.down.left")
                Text("Outgoing")
            }
            Text("Incoming Phone Calls Screen").tabItem {
                Image(systemName: "phone.arrow.down.left")
                Text("Incoming")
            }
            Text("History Screen").tabItem {
                Image(systemName: "clock")
                Text("History")
            }
            Text("New Phone Number").tabItem {
                Image(systemName: "phone.badge.plus")
                Text("New")
            }
        }
    }
}

#Preview {
    TabView_TooManyTabs()
}
