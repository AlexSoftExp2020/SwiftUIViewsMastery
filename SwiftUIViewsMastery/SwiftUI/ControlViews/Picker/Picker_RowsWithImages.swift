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

fileprivate struct Row: View {
    var name: String
    
    var body: some View {
        return HStack {
            Image(systemName: "person.fill")
                .padding(.trailing)
                .foregroundStyle(Color.red)
            Text(name)
        }
    }
}
