//
//  ShareLink_Customize.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.05.2025.
//

import SwiftUI

struct ShareLink_Customize: View {
    @State private var photo = Image("profile")
    
    var body: some View {
        VStack(spacing: 50.0) {
            ShareLink(item: "Hello and welcome!")
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
            
            ShareLink(item: photo, preview: SharePreview("Share Profile Image", image: photo)) {
                photo
            }
            .shadow(radius: 8)
            
            Spacer()
        }
    }
}

#Preview {
    ShareLink_Customize()
}
