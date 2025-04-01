//
//  CUV_WithActions.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct CUV_WithActions: View {
    var body: some View {
        ContentUnavailableView {
            Label("Are you sure?", systemImage: "questionmark.circle.fill")
        } description: {
            Text("This action will permanently delete the item.")
        } actions: {
            HStack(spacing: 24) {
                Button("Cancel", role: .cancel, action: {})
                Button("Delete", role: .destructive, action: {})
                    .buttonStyle(.borderedProminent)
            }
            .fixedSize()
            .controlSize(.regular)
        }

    }
}

#Preview {
    CUV_WithActions()
}
