//
//  List_WithChildren.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 18.04.2025.
//

import SwiftUI

// Need to conform to Identifiable
struct Parent: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Parent]? // Had to make this optional
}

struct List_WithChildren: View {
    var parents = [Parent(name: "Mark", children: [Parent(name: "Paola")]),
                   Parent(name: "Rodrigo", children: [Parent(name: "Kai"),
                                                      Parent(name: "Brennan"),
                                                      Parent(name: "Easton")]),
                   Parent(name: "Marcella", children: [Parent(name: "Sam"),
                                                       Parent(name: "Melissa"),
                                                       Parent(name: "Melanie")])]
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("List",
                       subtitle: "Children",
                       desc: "You can arrange your data to allow the List view to show it in an outline style.",
                       back: .green)
            
            List(parents, children: \.children) { parent in
                Text("\(parent.name)")
            }
        }
        .font(.title)
    }
}

#Preview {
    List_WithChildren()
}
