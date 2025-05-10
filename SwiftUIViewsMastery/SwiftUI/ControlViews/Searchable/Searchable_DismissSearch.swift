//
//  Searchable_DismissSearch.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 10.05.2025.
//

import SwiftUI

struct Searchable_DismissSearch: View {
    private let locations = ["Milton",
                             "Milltown",
                             "Millerville",
                             "Milwaukee",
                             "Millcreek",
                             "Milagro",
                             "Milano"]
    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationStack {
            //MARK: TODO SearchableSubview
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                }
            }
        }
        .onChange(of: locationSearch) { _, location in
            searchResults = locations.filter { name in
                name.hasPrefix(locationSearch)
            }
        }
    }
}

#Preview {
    Searchable_DismissSearch()
}
