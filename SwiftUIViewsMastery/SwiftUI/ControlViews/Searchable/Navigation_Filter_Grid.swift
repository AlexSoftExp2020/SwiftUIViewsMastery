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
                        ForEach(searchResults) { dev in
                            Image(dev.image)
                                .resizable()
                                .scaledToFill()
                        }
                    }
                }
                .animation(.default, value: searchText)
                
                HeaderView("",
                           subtitle: "Filter - Grid",
                           desc: "Notice when used with scrolling views, you have to pull down to show the searchable text field.")
                .font(.title)
            }
            .searchable(text: $searchText, prompt: Text("Filter"))
            .navigationTitle("Navigation")
            .task {
                devs = getDevelopers()
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
            //MARK: Update
            Developer(name: "Joe", image: "profile1"),
            Developer(name: "Eric", image: "profile2"),
            Developer(name: "Joey", image: "profile3"),
            Developer(name: "Joseph", image: "profile4"),
            Developer(name: "Lauren", image: "profile5"),
            Developer(name: "Paola", image: "profile6"),
            Developer(name: "Roxy", image: "profile7"),
            Developer(name: "Marry", image: "profile8"),
            Developer(name: "Elaine", image: "profile9"),
            Developer(name: "Matthew", image: "profile10"),
            Developer(name: "John", image: "profile11"),
            Developer(name: "Josphine", image: "profile12")
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
