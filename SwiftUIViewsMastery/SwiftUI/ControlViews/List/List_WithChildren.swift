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
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    List_WithChildren()
}
