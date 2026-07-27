//
//  TabViewPagingStyle_Customizations.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 27/07/2026.
//

import SwiftUI

struct TabViewPagingStyle_Customizations: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("TabView",
                       subtitle: "Customizations",
                       desc: "You could include the TabView as another way to do horizontal scrolling through data.")
            Text("People")
            // The real benefit here is that a TabView "snaps" to one view at a time so the whole view is visible
            TabView {
                ForEach(1..<21) { index in
                    VStack(spacing: 20) {
                        Text("Person \(index)")
                        Image("profile\(index)")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(16)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20)
                        .fill(Color.yellow.opacity(0.7)))
                    .padding()
                }
            }
        }
        .font(.title)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    TabViewPagingStyle_Customizations()
}
