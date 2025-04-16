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
            //MARK: TODO CustomRow(content: datum)
        }
    }
}

#Preview {
    List_CustomRows()
}
