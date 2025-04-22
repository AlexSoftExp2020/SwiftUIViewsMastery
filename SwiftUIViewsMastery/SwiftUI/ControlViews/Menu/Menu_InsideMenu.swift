//
//  Menu_InsideMenu.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct Menu_InsideMenu: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Menu",
                       subtitle: "Inner Menu",
                       desc: "You can also have a Menu inside of a Menu.",
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
                    Text("Change contrast")
                }
                Menu("Menu...") {
                    Button { } label: {
                        Text("Magic Wand")
                        Image(systemName: "wand.and.stars")
                    }
                    Button { } label: {
                        Image(systemName: "paintbrush.fill")
                        Text("Magic Paint")
                    }
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_InsideMenu()
}
