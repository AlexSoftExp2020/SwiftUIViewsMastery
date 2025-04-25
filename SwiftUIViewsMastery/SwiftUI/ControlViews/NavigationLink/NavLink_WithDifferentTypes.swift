//
//  NavLink_WithDifferentTypes.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.04.2025.
//

import SwiftUI

struct NavLink_WithDifferentTypes: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16.0) {
                NavigationLink(value: "NavigationLink 1") {
                    Text("Navigate with String")
                }
                NavigationLink(value: "true") {
                    Text("Navigate with Bool")
                }
            }
            .navigationDestination(for: String.self) { stringValue in
                Text("Value is: ") + Text("\(stringValue)").bold()
            }
            .navigationDestination(for: Bool.self) { boolValue in
                Text("Value is: ") + Text("\(boolValue.description)").bold()
            }
            .navigationTitle("Navigation Destination")
        }
        .font(.title)
    }
}

#Preview {
    NavLink_WithDifferentTypes()
}
