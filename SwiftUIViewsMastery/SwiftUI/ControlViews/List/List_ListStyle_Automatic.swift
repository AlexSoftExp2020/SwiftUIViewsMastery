//
//  List_ListStyle_Automatic.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

struct List_ListStyle_Automatic: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("List",
                       subtitle: "List Style Automatic",
                       desc: "You can apply different styles to lists. Here is what a list looks like using the default style 'automatic'.",
                       back: .green)
            
            List {
                Text("What yould you like to learn?")
                    .font(.title2)
                    .fontWeight(.bold)
                Label("Learn Geography", systemImage: "signpost.right.fill")
                Label("Learn Music", systemImage: "doc.richtext")
                Label("Learn Photography", systemImage: "camera.aperture")
                Label("Learn Art", systemImage: "paintpalette.fill")
                    .font(Font.system(.title3).weight(.bold))
                Label("Learn Physics", systemImage: "atom")
                Label("Learn 3D", systemImage: "cube.transparent")
                Label("Learn Hair Styling", systemImage: "comb.fill")
            }
            .accentColor(.green)
            .listStyle(.automatic)
        }
        .font(.title)
    }
}

#Preview {
    List_ListStyle_Automatic()
}
