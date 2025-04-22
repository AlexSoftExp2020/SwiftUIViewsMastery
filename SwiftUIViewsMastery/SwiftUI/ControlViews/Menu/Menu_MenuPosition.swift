//
//  Menu_MenuPosition.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct Menu_MenuPosition: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Menu {
                    Button { } label: {
                        Text("Menu Item 1")
                        Image(systemName: "network")
                    }
                    Button { } label: {
                        Text("Menu Item 2")
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .padding(.leading, 20)
                    }
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(.leading, 20)
                }
                Spacer()
            }
            Spacer()
            
            HeaderView("Menu",
                       subtitle: "Menu Position",
                       desc: "You may notice that the menu seems to always expand upward and you menu items are backwards. If the menu label (button) is toward the top of the screen, then the menu wil expand down from the button.",
                       back: .blue,
                       textColor: .white)
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_MenuPosition()
}
