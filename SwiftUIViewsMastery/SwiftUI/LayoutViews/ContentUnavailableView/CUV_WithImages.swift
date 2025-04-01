//
//  CUV_WithImages.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct CUV_WithImages: View {
    var body: some View {
        VStack {
            ContentUnavailableView("With Image Asset",
                                   image: "book.logo.large")
            ContentUnavailableView("With SF Font",
                                   systemImage: "paintbrush")
            ContentUnavailableView {
                Label("With Label", systemImage: "paintbrush")
            }
        }
    }
}

#Preview {
    CUV_WithImages()
}
