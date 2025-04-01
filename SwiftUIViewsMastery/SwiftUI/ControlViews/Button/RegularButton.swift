//
//  RegularButton.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct RegularButton: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Regular Button") {
                // Code here
            }
            Button {
                // Code here
            } label: {
                Text("Regular Button")
                    .bold()
            }
        }
        .font(.title) // Make all fonts use the title style
    }
}

#Preview {
    RegularButton()
}
