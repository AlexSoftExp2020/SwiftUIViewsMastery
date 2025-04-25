//
//  NavLink_Customization.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct NavLink_Customization: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate")
                        .foregroundStyle(.white)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                
                NavigationLink(destination: SecondView()) {
                    LabeledContent("Navigate") {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.blue)
                    }
                    .padding()
                }
            }
            .navigationTitle("NavigationLink")
        }
        .font(.title)
    }
}

#Preview {
    NavLink_Customization()
}
