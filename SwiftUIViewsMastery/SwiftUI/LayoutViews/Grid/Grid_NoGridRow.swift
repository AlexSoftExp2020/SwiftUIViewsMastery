//
//  Grid_NoGridRow.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct Grid_NoGridRow: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Column 1")
                Text("Column 2")
            }
            
            GridRow {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.blue.opacity(0.5))
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.orange.opacity(0.5))
                    .frame(width: 150)
            }
            
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.pink.opacity(0.5))
            
            GridRow {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.blue.opacity(0.5))
            }
        }
        .font(.title)
    }
}

#Preview {
    Grid_NoGridRow()
}
