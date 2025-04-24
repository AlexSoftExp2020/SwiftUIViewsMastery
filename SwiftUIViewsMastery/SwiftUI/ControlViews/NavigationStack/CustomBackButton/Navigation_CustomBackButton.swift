//
//  Navigation_CustomBackButton.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_CustomBackButton: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go To Detail") {
                Navigation_CustomBackButton_Detail()
            }
            .font(.title)
            .navigationTitle("Navigation Views")
        }
    }
}

#Preview {
    Navigation_CustomBackButton()
}
