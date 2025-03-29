//
//  ControlGroup_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 29.03.2025.
//

import SwiftUI

struct ControlGroup_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ControlGroup",
                       subtitle: "Introduction",
                       desc: "Use a ControlGroup view to group up related controls.")
            
            ControlGroup {
                Button("Hello") { }
                Button(action: { }) {
                    Image(systemName: "gearshape.fill")
                }
            }
            
            DescView("You can change the default style to 'navigation':")
            ControlGroup {
                Button("Hello!") { }
                Button(action: { }) {
                    Image(systemName: "gearshape.fill")
                }
            }
            .controlGroupStyle(.navigation)
        }
        .font(.title)
    }
}

#Preview {
    ControlGroup_Intro()
}
