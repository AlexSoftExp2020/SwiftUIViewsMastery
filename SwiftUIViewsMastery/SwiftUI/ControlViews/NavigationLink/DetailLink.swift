//
//  DetailLink.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct DetailLink: View {
    var body: some View {
        NavigationSplitView {
            VStack(spacing: 20) {
                NavigationLink("Navigate There ->") {
                    NavigationDestinationView()
                }
                NavigationLink("Navigate Here") {
                    NavigationDestinationView()
                }
                .isDetailLink(false) // Do not navigate to detail column
            }
            .navigationTitle("NavigationLink")
        } detail: {
            Text("Detail")
        }
        .font(.title)
    }
}

#Preview {
    DetailLink()
}
