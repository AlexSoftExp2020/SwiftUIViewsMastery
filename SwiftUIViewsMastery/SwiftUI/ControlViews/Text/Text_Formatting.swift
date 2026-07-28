//
//  Text_Formatting.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 28/07/2026.
//

import SwiftUI

struct Text_Formatting: View {
    @State private var modifierActive = true
    var body: some View {
        HStack {
            Image("Bold")
            Text("Bold").bold()
        }
        HStack {
            Image("Italic")
            Text("Italic").italic()
        }
        HStack {
            Image("Strikethrough")
            Text("Strikethrough").strikethrough()
        }
        HStack {
            Image("Strikethrough")
            Text("Green Strikethrough")
                .strikethrough(modifierActive, color: .green)
        }
        HStack {
            Image("ForegroundStyle")
            Text("Text Color (ForegroundStyle)").foregroundStyle(.green)
        }
        HStack {
            Image("Underline")
            Text("Underline").underline()
        }
        HStack {
            Image("Underline")
            Text("Green Underline").underline(modifierActive, color: .green)
        }
        Toggle("Modifier Active", isOn: $modifierActive)
    }
}

#Preview {
    Text_Formatting()
}
