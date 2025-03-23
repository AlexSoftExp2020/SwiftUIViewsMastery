//
//  GridSpacing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct GridSpacing: View {
    var body: some View {
        Grid(horizontalSpacing: 24, verticalSpacing: 24) {
            
            GridRow {
                Color.green.opacity(0.5)
                Color.green.opacity(0.5)
                Color.green.opacity(0.5)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.orange.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
        }
    }
}

#Preview {
    GridSpacing()
}
