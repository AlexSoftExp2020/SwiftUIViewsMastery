//
//  BackButtonHiddenDetail.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct BackButtonHiddenDetail: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button("Go Back") {
            dismiss()
        }
        .font(.title)
        .navigationTitle("Detail View")
        // Hide the back button
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    BackButtonHiddenDetail()
}
