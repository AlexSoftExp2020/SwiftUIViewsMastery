//
//  Menu_OtherViewsWithin.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct Menu_OtherViewsWithin: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button("Menu Item 1", action: {})
                    Divider()
                    Button(action: {}) {
                        Text("Dividers create a thicker separator")
                        Image(systemName: "hand.point.up")
                        }
                    Divider()
                    Text("This is a text view")
                        .font(.caption) // No effect
                        .textCase(.uppercase)
                    Button(action: {}) {
                        Text("Menu text will use up to two lines if too long")
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                Spacer()
            }
            Spacer()
            
            HeaderView("Menu",
                       subtitle: "Other Views Within",
                       desc: "You can include other views not just buttons, inside the menu.",
                       back: .blue,
                       textColor: .white)
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_OtherViewsWithin()
}
