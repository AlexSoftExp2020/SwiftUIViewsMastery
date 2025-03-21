//
//  HStack_Customizing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.03.2025.
//

import SwiftUI

struct HStack_Customizing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("HStack",
                       subtitle: "Customizing",
                       desc: "HStacks are views that can have modifiers applied to them just like any other view.",
                       back: .orange)
            
            HStack {
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }
            .padding()
            .border(Color.orange) // Create a 2 point border using the color specified
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.padding()
            
            HStack {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.orange))
        }
        .font(.title)
    }
}

#Preview {
    HStack_Customizing()
}
