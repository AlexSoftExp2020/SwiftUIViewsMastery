//
//  Navigation_NavigationTitle.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_NavigationTitle: View {
    var body: some View {
        NavigationStack {
            Text("😄")
                .navigationTitle("Navigation Stack Title")
        }
        .font(.title)
    }
}

#Preview {
    Navigation_NavigationTitle()
}
