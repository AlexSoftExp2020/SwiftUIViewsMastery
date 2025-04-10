//
//  Form_HeaderProminence.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 10.04.2025.
//

import SwiftUI

struct Form_HeaderProminence: View {
    var body: some View {
        Form {
            Section {
                Text("You have seen that you can customize the section header style. You can also use header prominence to style the header.")
            } header: {
                Text("Standard Header Prominence")
            }
            .headerProminence(.standard)
            
            Section {
                Text("Use increased header prominence to make it stand out more.")
            } header: {
                Text("Increased Header Prominence")
            }
            .headerProminence(.increased)
        }
    }
}

#Preview {
    Form_HeaderProminence()
}
