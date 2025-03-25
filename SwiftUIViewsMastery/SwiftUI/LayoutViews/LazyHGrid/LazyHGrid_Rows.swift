//
//  LazyHGrid_Rows.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

struct LazyHGrid_Rows: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("LazyHGrid",
                       subtitle: "Rows",
                       desc: "You can specify the number of rows with an array of GridItems.")
            
            Text("Two Rows (2 GridItems):")
            
            let twoRows = [GridItem(), GridItem()]
            
            LazyHGrid(rows: twoRows) {
                ForEach(1..<11) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
            
            Text("Four Rows (4 GridItems):")
            
            let fourRows = [GridItem(), GridItem(), GridItem(), GridItem()]
            
            LazyHGrid(rows: fourRows) {
                ForEach(1..<11) { item in
                    Image(systemName: "\(item).circle")
                }
                Image(systemName: "arrow.right.circle")
            }
            .font(.largeTitle)
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_Rows()
}
