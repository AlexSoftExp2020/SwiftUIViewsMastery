//
//  TabView_PreventBackground.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabView_PreventBackground: View {
    var body: some View {
        TabView {
            VStack(spacing: 20.0) {
                HeaderView("TabView", subtitle: "Prevent Background", desc: "To prevent your background from ignoring the tab view safe area edge define a different edge or use .inti().")
                Spacer()
                Button(action: {}) {
                    Text("Take action")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.green)
                }
            }
            .tabItem {
                Image(systemName: "house")
            }

            VStack {
                Text("Messges")
                Spacer()
                Button(action: {}) {
                    Text("Take action")
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.green, ignoresSafeAreaEdges: .top)
                }
            }
            .tabItem {
                Image(systemName: "envelope")
            }
        }
        .font(.title)
    }
}

#Preview {
    TabView_PreventBackground()
}
