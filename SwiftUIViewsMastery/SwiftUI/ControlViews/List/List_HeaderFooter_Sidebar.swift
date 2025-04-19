//
//  List_HeaderFooter_Sidebar.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_HeaderFooter_Sidebar: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("List",
                       subtitle: "Sidebar - Headers & Footers",
                       desc: "This list style also changes the way headers and footers are redered.",
                       back: .green,
                       textColor: .black)
            List {
                Section(header: Text("What would you like to learn?"),
                        footer: Text("Count: 5")) {
                    Label("Learn Geography", systemImage: "signpost.right.fill")
                    Label("Learn Music", systemImage: "doc.richtext")
                    Label("Learn Photography", systemImage: "camera.aperture")
                    Label("Learn Art", systemImage: "paintpalette.fill")
                    Label("Learn Physics", systemImage: "atom")
                }
            }
            .listStyle(.sidebar)
            .tint(.green)
        }
        .font(.title)
    }
}

#Preview {
    List_HeaderFooter_Sidebar()
}
