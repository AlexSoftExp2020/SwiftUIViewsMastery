//
//  LabeledContent_Content.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct LabeledContent_Content: View {
    var body: some View {
        Form {
            LabeledContent("Opt in to") {
                GroupBox {
                    Toggle("Emails", isOn: .constant(false))
                    Toggle("Texts", isOn: .constant(true))
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    LabeledContent_Content()
}
