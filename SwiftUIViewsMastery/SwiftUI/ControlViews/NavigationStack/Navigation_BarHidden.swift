//
//  Navigation_BarHidden.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.04.2025.
//

import SwiftUI

struct Navigation_BarHidden: View {
    @State private var isHidden = false
    
    var body: some View {
        NavigationStack {
            Toggle("Hide Nav Bar", isOn: $isHidden)
                .font(.title)
                .padding()
                .navigationBarHidden(isHidden)
                .navigationTitle("Hide Me")
        }
    }
}

#Preview {
    Navigation_BarHidden()
}
