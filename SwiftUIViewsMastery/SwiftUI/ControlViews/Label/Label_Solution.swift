//
//  Label_Solution.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 14.04.2025.
//

import SwiftUI

struct Label_Solution: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Label",
                       subtitle: "Solution",
                       desc: "The Label can help with the alignment of images and text from row-to-row in a list.",
                       back: .pink)
            
            List {
                Label("Edit", systemImage: "rectangle.and.pencil.and.ellipsis")
                Label("Archives", systemImage: "archivebox.circle")
                Label("Document", systemImage: "camera.badge.ellipsis")
            }
            .padding(.horizontal)
            .listStyle(.plain)
            
            DescView("The text will continue to be aligned, even if the text size changes with accessibility settings.",
                     back: .pink)
        }
        .font(.title)
    }
}

#Preview {
    Label_Solution()
}
