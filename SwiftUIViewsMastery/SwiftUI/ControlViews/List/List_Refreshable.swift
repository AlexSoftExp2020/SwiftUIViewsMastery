//
//  List_Refreshable.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.04.2025.
//

import SwiftUI

struct List_Refreshable: View {
    @State private var stringArray = ["Evans",
                                      "Lemuel",
                                      "Mark",
                                      "Durtschi",
                                      "Chase",
                                      "Adam",
                                      "Rodrigo"]
    
    var body: some View {
        List {
            Group {
                Text(Image(systemName: "arrow.down")) +
                Text(" Pull to Refresh ") +
                Text(Image(systemName: "arrow.down"))
            }
            .frame(maxWidth: .infinity)
            .foregroundStyle(.green)
            
            ForEach(stringArray, id: \.self) { string in
                Text(string)
            }
        }
        .font(.title)
        .refreshable {
            // Perform some action
            stringArray.append("👉 New Name")
        }
    }
}

#Preview {
    List_Refreshable()
}
