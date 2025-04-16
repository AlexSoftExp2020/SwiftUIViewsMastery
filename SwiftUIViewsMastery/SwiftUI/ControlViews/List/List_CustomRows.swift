//
//  List_CustomRows.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct List_CustomRows: View {
    var data = ["Custom Rows!", "Evans", "Lemuel James Guerrero", "Mark", "Durtschi", "Chase", "Adam", "Rodrigo"]
    
    var body: some View {
        List(data, id: \.self) { datum in
            CustomRow(content: datum)
        }
    }
}

#Preview {
    List_CustomRows()
}

struct CustomRow: View {
    var content: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Text(content)
            Spacer()
        }
        .foregroundStyle(content == "Custom Rows!" ? Color.green : Color.primary)
        .font(.title)
        .padding([.top, .bottom])
    }
}
