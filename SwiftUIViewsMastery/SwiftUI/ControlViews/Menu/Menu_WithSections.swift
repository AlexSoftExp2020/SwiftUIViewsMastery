//
//  Menu_WithSections.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.04.2025.
//

import SwiftUI

struct Menu_WithSections: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Menu",
                       subtitle: "With Sections",
                       desc: "You can also use Sections to divide up your menu items.",
                       back: .blue,
                       textColor: .white)
            Menu("Edit") {
                Section {
                    Button("Menu Item 1", action: {})
                    Button("Menu Item 2", action: {})
                    Button("Menu Item 3", action: {})
                    Button("Menu Item 4", action: {})
                    Button("Menu Item 5", action: {})
                }
                
                Section {
                    Button("Menu Item 6", action: {})
                    Button("Menu Item 7", action: {})
                    Button("Menu Item 8", action: {})
                    Button("Menu Item 9", action: {})
                    Button("Menu Item 10", action: {})
                    Button("Menu Item 11", action: {})
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_WithSections()
}
