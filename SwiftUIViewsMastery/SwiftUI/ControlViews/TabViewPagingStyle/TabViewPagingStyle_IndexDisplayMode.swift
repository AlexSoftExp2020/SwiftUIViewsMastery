//
//  TabViewPagingStyle_IndexDisplayMode.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 24/07/2026.
//

import SwiftUI

struct TabViewPagingStyle_IndexDisplayMode: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Index Display Mode", desc: "You can also get rid of paging index dots using the parameter indexDisplayMode and setting it to .never.")
                Text("PAGE 1")
                Spacer()
                DescView("There is also another option which is .automatic which will only show dots if the TabView has more than one view within it.")
            }
            VStack {
                Text("PAGE 2")
            }
            VStack {
                Text("PAGE 3")
            }
        }
        .font(.title)
        .tabViewStyle(.page(indexDisplayMode: .never)) // Don't show dots. Notice this is using a different parameter than the previous page. There are two different page functions: backgroundDisplayMode, indexDisplayMode. Sometimes you will need both.
    }
}

#Preview {
    TabViewPagingStyle_IndexDisplayMode()
}
