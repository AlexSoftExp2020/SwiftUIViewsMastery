//
//  SecondView.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("View 2")
                .font(.largeTitle)
        }
        .navigationTitle("Second View")
    }
}

#Preview {
    SecondView()
}
