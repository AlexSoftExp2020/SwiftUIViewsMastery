//
//  Navigation_Filter_Grid.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 11.05.2025.
//

import SwiftUI

struct Navigation_Filter_Grid: View {
    @State private var devs: [Developer] = []
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()),
                                        GridItem(.flexible()),
                                        GridItem(.flexible())]) {
                        //ForEach(..., content: <#T##(Int) -> Content#>)
                    }
                }
            }
        }
    }
    
    var searchResults: [Developer] {
        if searchText.isEmpty {
            return devs
        } else {
            return devs.filter { $0.name.contains(searchText) }
        }
    }
    
    func getDevelopers() -> [Developer] {
        [
            Developer(name: "Joe", image: "profile1"),
            Developer(name: "Joe", image: "profile2"),
            Developer(name: "Joe", image: "profile3"),
            Developer(name: "Joe", image: "profile4"),
            Developer(name: "Joe", image: "profile5"),
            Developer(name: "Joe", image: "profile6"),
            Developer(name: "Joe", image: "profile7"),
            Developer(name: "Joe", image: "profile8"),
            Developer(name: "Joe", image: "profile9"),
            Developer(name: "Joe", image: "profile10"),
            Developer(name: "Joe", image: "profile11"),
            Developer(name: "Joe", image: "profile12")
        ]
    }
    
}

#Preview {
    Navigation_Filter_Grid()
}


struct Developer: Identifiable {
    let id = UUID()
    var name = ""
    var image = ""
}
