//
//  GridCellColumns.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct GridCellColumns: View {
    var body: some View {
        Grid {
            
            GridRow {
                Color.green.opacity(0.5)
                    .gridCellColumns(3)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                    .gridCellColumns(2)
            }
            
            GridRow {
                Color.blue.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
        }
    }
}

#Preview {
    GridCellColumns()
}
