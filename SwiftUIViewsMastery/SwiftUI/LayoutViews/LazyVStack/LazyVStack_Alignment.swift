//
//  LazyVStack_Alignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct LazyVStack_Alignment: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView("LazyVStack",
                       subtitle: "Alignment",
                       desc: "Since LazyVStacks are push-out views (horizontally) the alignment parameter could be useful.")
            Text("Leading")
            LazyVStack(alignment: .leading, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2) // Draws a border around the frame of the view
            
            Text("Trailing")
            LazyVStack(alignment: .trailing, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
        }
        .font(.title)
    }
}

#Preview {
    LazyVStack_Alignment()
}
