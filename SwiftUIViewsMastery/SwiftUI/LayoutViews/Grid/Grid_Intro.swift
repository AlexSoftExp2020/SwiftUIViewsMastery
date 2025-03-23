//
//  Grid_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct Grid_Intro: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Colomn 1")
                Color.blue.opacity(0.5)
                    .overlay(Text("Column 2"))
                    .frame(height: 50)
            }
            
            GridRow {
                Text("Column 1")
            }
            
            GridRow {
                Text("Column 1")
                Image(systemName: "arrow.left")
            }
        }
    }
}

#Preview {
    Grid_Intro()
}
