//
//  PhotosPicker_MultipleItems.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI
import PhotosUI

struct PhotosPicker_MultipleItems: View {
    @State private var photos: [PhotosPickerItem] = []
    @State private var selectedImages: [Image] = []
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $photos,
                         matching: .images) {
                Text("Photos")
            }
            
            if (photos.count > 0) {
                Text("Selectedd Photos")
                List {
                    ForEach(0..<selectedImages.count, id: \.self) { index in
                        selectedImages[index]
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            Spacer()
        }
        .font(.title)
        .onChange(of: photos) { _, newPhotos in
            Task {
                for newPhoto in newPhotos {
                    await selectedImages.append(newPhoto.convert())
                }
            }
        }
    }
}

#Preview {
    PhotosPicker_MultipleItems()
}
