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
                Row(name: "Paul").tag("Paul")
                Row(name: "Chris").tag("Chris")
                Row(name: "Mark").tag("Mark")
                Row(name: "Scott").tag("Scott")
                Row(name: "Meng").tag("Meng")
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
        }
        .font(.title)
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
