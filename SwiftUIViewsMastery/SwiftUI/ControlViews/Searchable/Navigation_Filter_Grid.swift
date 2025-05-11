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
}

#Preview {
    Navigation_Filter_Grid()
}
