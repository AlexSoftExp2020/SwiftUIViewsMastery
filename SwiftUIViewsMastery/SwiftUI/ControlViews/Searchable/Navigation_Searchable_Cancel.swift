//
//  Navigation_Searchable_Cancel.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 08.05.2025.
//

import SwiftUI

struct Navigation_Searchable_Cancel: View {
    private let locations = ["Milton", "Milltown", "Millerville", "Milwaukee", "Millcreek", "Milargo", "Milano"]
    @State private var searchResults:[String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                Text("Where do you want to go?")
                Text(destination)
                    .fontWeight(.bold)
                Spacer()
                HeaderView("",
                           subtitle: "Cancel Search",
                           desc: "Here is one way to cancel searching programmatically.")
            }
            .font(.title)
            .navigationTitle(Text("Navigation"))
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                    destination = name
                    locationSearch = ""
                    hideKeyboard()
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
    Navigation_Searchable_Cancel()
}

extension View {
    func hideKeyboard() {
        UIApplication
            .shared
            .sendAction(#selector(UIResponder.resignFirstResponder),
                        to: nil,
                        from: nil,
                        for: nil)
    }
}
