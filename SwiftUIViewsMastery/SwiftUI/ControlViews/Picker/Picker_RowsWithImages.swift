//
//  Picker_RowsWithImages.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.04.2025.
//

import SwiftUI

struct Picker_RowsWithImages: View {
    @State private var youTuberName = "Mark"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Rows with Images",
                       desc: "Row customization is limited. Adding an image will work.")
            Picker(selection: $youTuberName, label: Text("")) {
                // MARK: TODO
            }
        }
    }
}

#Preview {
    Picker_RowsWithImages()
}
