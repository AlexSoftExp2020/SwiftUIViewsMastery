//
//  Navigation_Searchable_Filter.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 11.05.2025.
//

import SwiftUI

struct Navigation_Searchable_Filter: View {
    private let names = ["Chris",
                         "Paul",
                         "Scott",
                         "Donny",
                         "Antoine",
                         "Denise",
                         "Sean"]
    @State private var filteredNames: [String] = []
    @State private var nameSearch = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                List(nameSearch.isEmpty ? names : filteredNames, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
                HeaderView("",
                           subtitle: "Searchable - Filter",
                           desc: "Use searchable to filter an existing list.")
                .font(.title)
            }
            .navigationTitle(Text("Navigation"))
        }
        .searchable(text: $nameSearch,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: Text("Filter"))
        .onChange(of: nameSearch) { _, name in
            filteredNames = names.filter { name in
                name.hasPrefix(nameSearch)
            }
        }
    }
}

#Preview {
    Navigation_Searchable_Filter()
}
