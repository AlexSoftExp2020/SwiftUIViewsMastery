//
//  VStack_Nesting.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct VStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("VStack",
                       subtitle: "Nesting",
                       desc: "A VStack can be nested within another VStack when laying out views.",
                       back: .blue,
                       textColor: .white)
            VStack {
                Text("VStack inside another VStack")
                Divider()
                Text("This can be helpful. Why?")
                Divider()
                Text("More than 10 views creates an error.")
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(
                // Use a blue rectangle as the background
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.blue))
            .padding()
        }
        .font(.title)
    }
}

#Preview {
    VStack_Nesting()
}
