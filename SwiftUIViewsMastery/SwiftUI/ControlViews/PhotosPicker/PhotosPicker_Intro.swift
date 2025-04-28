//
//  PhotosPicker_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI
import PhotosUI

struct PhotosPicker_Intro: View {
    @State private var photo: PhotosPickerItem?
    
    @State private var selectedImage: Image?
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $photo, matching: .images) {
                Text("Select a photo")
            }
            Spacer()
            if let selectedImage {
                Text("Selected Photo")
                selectedImage
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
        }
        .font(.title)
        .onChange(of: photo) { _, newPhoto in
            if let newPhoto {
                Task {
                    // MARK: TODO selectedImage = await newPhoto.convert()
                }
            }
        }
    }
}

#Preview {
    PhotosPicker_Intro()
}


extension PhotosPickerItem {
    /// Load and return an image from a PhotosPickerItem
    @MainActor
    func convert() async -> Image {
        do {
            if let data = try await self.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    return Image(uiImage: uiImage)
                }
            }
        } catch {
            print(error.localizedDescription)
        }
        return Image(systemName: "xmark.octagon")
    }
}
