//
//  List_WithData.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct List_WithData: View {
    var stringArray = ["This is the simplest List", "Evans", "Lemuel James Guerrero", "Mark", "Durtschi", "Chase", "Adam", "Rodrigo", "Notice the automatic wrapping when the text is longer"]
    var body: some View {
        List(stringArray, id: \.self) { string in
            Text(string)
        }
        .font(.largeTitle) // Apply this font style to all items in the list
    }
}

#Preview {
    List_WithData()
}
