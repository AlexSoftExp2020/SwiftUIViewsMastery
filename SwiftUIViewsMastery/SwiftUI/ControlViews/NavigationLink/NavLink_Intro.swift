//
//  NavLink_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct NavLink_Intro: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("Just Text", destination: SecondView())
                
                NavigationLink {
                    SecondView()
                } label: {
                    Label("Label", systemImage: "doc.text.fill")
                }
            }
            .navigationTitle("NavigationLink")
        }
        .font(.title)
    }
}

#Preview {
    NavLink_Intro()
}
