//
//  TabViewPagingStyle_Introduction.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabViewPagingStyle_Introduction: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView",
                           subtitle: "PageTabViewStyle",
                           desc: "The tab view can have a style applied to it which enables the ability to horizontally swipe through views that snap into place.")
                Text("PAGE")
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            VStack {
                Text("PAGE")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            VStack {
                Text("PAGE")
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "3.circle")
                }
            }
        }
        .font(.title)
        .tabViewStyle(.page) // Just this one line is all that is needed to enable paging.
    }
}

#Preview {
    TabViewPagingStyle_Introduction()
}
