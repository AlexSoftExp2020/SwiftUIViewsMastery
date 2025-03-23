//
//  Grid_Comparison.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct Grid_Comparison: View {
    var body: some View {
        VStack {
            
            HStack {
                Text("Column 1")
                Color.blue.opacity(0.5)
                    .overlay(Text("Column 2"))
                    .frame(height: 50)
            }
            
            HStack {
                Text("Column 1")
            }
            
            HStack {
                Text("Column 1")
                Image(systemName: "arrow.left")
            }
            
        }
        .font(.title)
    }
}

#Preview {
    Grid_Comparison()
}
