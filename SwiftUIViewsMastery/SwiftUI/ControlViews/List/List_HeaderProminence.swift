//
//  List_HeaderProminence.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_HeaderProminence: View {
    var body: some View {
        List {
            Section {
                Text("You can also use header prominence to style the header.")
                    .listRowBackground(Color.green)
            } header: {
                Text("Standard Header Prominence")
            }
            .headerProminence(.standard)
            
            Section {
                Text("Use increased header prominence to make it stand out more.")
                    .listRowBackground(Color.green)
            } header: {
                Text("Increased Header Prominence")
            }
            .headerProminence(.increased)
        }
        .font(.title)
    }
}

#Preview {
    List_HeaderProminence()
}
