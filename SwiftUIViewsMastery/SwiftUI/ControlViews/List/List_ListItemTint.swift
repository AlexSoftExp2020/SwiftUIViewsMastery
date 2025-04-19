//
//  List_ListItemTint.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_ListItemTint: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("List",
                       subtitle: "ListItemTint",
                       desc: "ListItemTint is used to apply a color to rows but only works with images in Label views.",
                       back: .green,
                       textColor: .black)
            .layoutPriority(1)
            
            Text("Using listItemTint")
            
            List {
                Label("Label", systemImage: "camera.aperture")
                    .listItemTint(Color.red)
                Button("Button") { }
                    .listItemTint(Color.red)
                HStack {
                    Image(systemName: "camera.aperture")
                    Text("SF Image and Text")
                }
                .listItemTint(Color.red)
            }
            .foregroundStyle(Color.green)
            
            Text("Using foregroundStyle")
            
            List {
                Label("Label", systemImage: "camera.aperture")
                Button("Button") { }
                HStack {
                    Image(systemName: "camera.aperture")
                    Text("SF Image and Text")
                }
            }
            .foregroundStyle(Color.red)
        }
        .font(.title)
    }
}

#Preview {
    List_ListItemTint()
}
