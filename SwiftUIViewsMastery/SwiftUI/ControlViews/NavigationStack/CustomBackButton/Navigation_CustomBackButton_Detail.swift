//
//  Navigation_CustomBackButton_Detail.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_CustomBackButton_Detail: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack { }
            .navigationTitle("Detail VIew")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Back", systemImage: "arrow.left.circle")
                    }
                }
            }
    }
}

#Preview {
    Navigation_CustomBackButton_Detail()
}
