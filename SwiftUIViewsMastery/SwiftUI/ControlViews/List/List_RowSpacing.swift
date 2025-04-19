//
//  List_RowSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_RowSpacing: View {
    var body: some View {
        VStack(spacing: 0) {
            List {
                Text("Row 1")
                Text("Row 2")
                Text("Row 3")
                Text("Row 4")
                Text("Row 5")
                    .listRowBackground(Color.pink)
            }
            .listStyle(.plain)
            .listRowSpacing(100)
        }
        .font(.title)
    }
}

#Preview {
    List_RowSpacing()
}
