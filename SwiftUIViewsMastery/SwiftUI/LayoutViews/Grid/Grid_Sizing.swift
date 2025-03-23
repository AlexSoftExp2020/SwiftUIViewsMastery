//
//  Grid_Sizing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct Grid_Sizing: View {
    var body: some View {
        Grid {
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                    .frame(width: 75)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                    .frame(height: 150)
            }
        }
    }
}

#Preview {
    Grid_Sizing()
}
