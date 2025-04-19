//
//  List_ListStyle_Grouped.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_ListStyle_Grouped: View {
    var data = ["Grouped List Style",
                "This list is using the group list style",
                "Evans",
                "Lemuel James Guerrero",
                "Mark",
                "Durtschi",
                "Chase",
                "Adam",
                "Rodrigo"]
    
    var body: some View {
        List(data, id: \.self) { datum in
            HStack {
                Text(datum)
                    .font(datum == "Grouped List Style" ? Font.largeTitle : Font.body)
                
                Spacer()
                
                Image(systemName: datum == "Mark" ? "circle.fill" : "circle")
                    .foregroundStyle(Color.green)
            }
        }
        // Change the List Style to Grouped
        .listStyle(.grouped)
    }
}

#Preview {
    List_ListStyle_Grouped()
}
