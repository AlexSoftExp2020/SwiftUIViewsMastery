//
//  SearchableSubview.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 10.05.2025.
//

import SwiftUI

struct SearchableSubview: View {
    @Binding var destination: String
    @Environment(\.isSearching) var isSearching
    @Environment(\.dismissSearch) var dismissSearch
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Where do you want to go?")
            Text(destination)
                .fontWeight(.bold)
            
            if isSearching && destination.isEmpty == false {
                Button("Confirm") {
                    dismissSearch()
                }
            }
            Spacer()
            HeaderView("",
                       subtitle: "Dismiss Search",
                       desc: "Use the dismissSearch to programatically cancel searching.")
        }
        .font(.title)
        .navigationTitle(Text("Searchable"))
    }
}

#Preview {
    SearchableSubview(destination: .constant("Destination"))
}
