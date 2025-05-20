//
//  Searchable_Completion.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 17.05.2025.
//

import SwiftUI

struct Searchable_Completion: View {
    @State private var locationSearch = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {}
            .searchable(text: $locationSearch) {
                Group {
                    HStack {
                        Image(systemName: "house.circle")
                            .font(.largeTitle)
                        Text("Home")
                    }
                    .searchCompletion("123 Main Street, Salt Lake Cite, Utah")
                    HStack {
                        Image(systemName: "building.2.crop.circle")
                            .font(.largeTitle)
                        Text("Work")
                    }
                    .searchCompletion("456 State Street, Salt Lake City, Utah")
                }
                .font(.title2)
                .tint(.primary)
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    Searchable_Completion()
}
