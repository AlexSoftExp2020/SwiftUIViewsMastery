//
//  Link_Customization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct Link_Customization: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("Link",
                       subtitle: "Customizations",
                       desc: "Like the Button, there's another initializer you can use create a custom button for the Link.")
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                HStack(spacing: 20.0) {
                    Image(systemName: "applelogo")
                    Text("Go to Apple")
                }
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Capsule()
                    .fill(Color.blue)
                    .shadow(radius: 8, y: 18))
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Link_Customization()
}
