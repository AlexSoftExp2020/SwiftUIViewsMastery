//
//  TabView_SymbolVariants.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_SymbolVariants: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView", subtitle: "Symbol Variants", desc: "The platform will change the SF symbol you are using to filled or not filled depending on the context. \nFor example, in iOS it will use filled versions of the symbols you choose for TabViews.")
                Text("Original SF Symbols:")
                Image(systemName: "star")
                Image(systemName: "moon")
                Image(systemName: "sun.min")
            }.tabItem {
                Image(systemName: "star")
                Text("Home")
            }
            Text("Second Screen").tabItem {
                Image(systemName: "moon")
                Text("Night")
            }
            Text("Third Screen").tabItem {
                Image(systemName: "sun.min")
                Text("Day")
            }
        }
        .font(.title)
    }
}

#Preview {
    TabView_SymbolVariants()
}
