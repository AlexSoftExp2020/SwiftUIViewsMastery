//
//  Label_ListItemTint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 15.04.2025.
//

import SwiftUI

struct Label_ListItemTint: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Label",
                       subtitle: "List Item Tint",
                       desc: "In iOS, you can apply an item tint color to a label view to a change just the image.",
                       back: .pink)
            .layoutPriority(1)
            
            List {
                Label("Edit", systemImage: "rectangle.and.pencil.and.ellipsis")
                    .listItemTint(.pink)
                Label("Archives", systemImage: "archivebox.circle")
                    .listItemTint(.orange)
                Label("Document", systemImage: "doc.richtext")
                    .listItemTint(.red)
                Label("Camera Settings", systemImage: "camera.badge.ellipsis")
                    .listItemTint(.monochrome)
            }
            
            Label("Bullet List", systemImage: "list.bullet.rectangle.fill")
                .listItemTint(.red) // listItemTint does not work when outside a list
        }
        .font(.title)
    }
}

#Preview {
    Label_ListItemTint()
}
