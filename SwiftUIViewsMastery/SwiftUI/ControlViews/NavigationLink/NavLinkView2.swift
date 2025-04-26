//
//  NavLinkView2.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct NavLinkView2: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack(spacing: 20) {
            NavigationLink(value: "View 3") {
                Text("Go to View 3")
            }
            
            Text("Nav Path Items:")
            Text(navPath, format: .list(type: .and, width: .short))
        }
        .navigationTitle("View 2")
    }
}
