//
//  NavLinkView3.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct NavLinkView3: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack {
            Button("Pop to Root View") {
                navPath.removeAll()
            }
            Text("Nav Path Items:")
            Text(navPath, format: .list(type: .and, width: .short))
        }
        .navigationTitle("View 3")
    }
}
