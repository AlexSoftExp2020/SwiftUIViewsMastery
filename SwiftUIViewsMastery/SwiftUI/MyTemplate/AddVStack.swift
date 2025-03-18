//
//  AddVStack.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 17.03.2025.
//

import SwiftUI

struct AddVStack: View {
    var body: some View {
        // Only one view can be returned from the body property.
        // Add 20 points between views within this container.
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
        }
    }
}

#Preview {
    AddVStack()
}
