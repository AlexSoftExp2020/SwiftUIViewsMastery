//
//  Label_Problem.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 14.04.2025.
//

import SwiftUI

struct Label_Problem: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Label", subtitle: "Problem",
                       desc: "Before I tell you about the Label view, I want to share a problem when using SF Symbols. Notice the alignment of the text next to the images in this List:",
                       back: .pink)
            List {
                HStack(spacing: 20) {
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("Edit")
                    Spacer()
                }
                HStack(spacing: 20) {
                    Image(systemName: "archivebox.circle")
                    Text("Archives")
                    Spacer()
                }
                HStack(spacing: 20) {
                    Image(systemName: "doc.richtext")
                    Text("Document")
                    Spacer()
                }
                HStack(spacing: 20) {
                    Image(systemName: "camera.badge.ellipsis")
                    Text("Camera Settings")
                    Spacer()
                }
            }
            .padding(.horizontal)
            DescView("Notice because of the different image widths, the text is not aligned. The Label view can help with this.",
                     back: .pink)
        }
        .font(.title)
    }
}

#Preview {
    Label_Problem()
}
