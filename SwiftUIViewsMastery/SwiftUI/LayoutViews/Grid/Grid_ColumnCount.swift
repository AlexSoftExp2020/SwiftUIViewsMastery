//
//  Grid_ColumnCount.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 23.03.2025.
//

import SwiftUI

struct Grid_ColumnCount: View {
    var body: some View {
        Grid {
            
            GridRow {
                ForEach(1..<3) { number in
                    Image(systemName: "\(number).square")
                }
            }
            
            GridRow {
                ForEach(1..<5) { number in
                    Image(systemName: "\(number).square")
                }
            }
            
            GridRow {
                ForEach(1..<8) { number in
                    Image(systemName: "\(number).square")
                }
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    Grid_ColumnCount()
}
