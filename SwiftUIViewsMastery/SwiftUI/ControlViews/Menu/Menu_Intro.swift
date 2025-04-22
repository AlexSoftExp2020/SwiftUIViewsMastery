//
//  Menu_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct Menu_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Menu",
                       subtitle: "Introduction",
                       desc: "Use the Menu view to group up similiar actions to present to the user from a tappable button.",
                       back: .blue,
                       textColor: .white)
            Spacer()
            
            Menu("Edit") {
                Button { } label: {
                    Text("Add color")
                    Image(systemName: "eyedropper.full")
                }
                Button { } label: {
                    Image(systemName: "circle.lefthalf.fill")
                        .foregroundStyle(.blue) // No effect
                    Text("Change contrast")
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_Intro()
}
